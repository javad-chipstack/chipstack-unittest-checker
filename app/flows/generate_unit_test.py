import os
import re
import json
import shutil
import traceback
from typing import Tuple, List, Dict, Any, TextIO, Optional
from pydantic import BaseModel, ConfigDict
from chipstack_client.client_v2 import ClientV2
from app.utils.unit_test_config import UnitTestConfig
from app.utils.syntax_highlight import (
    convert_verilog_to_html,
    convert_json_to_html,
    create_syntax_correction_report,
)
from app.utils.file import canonical_path, write_str_to_file
from app.flows.syntax_correction import (
    SyntaxIssues,
    SyntaxCorrection,
    SyntaxCorrectionDetails,
    CorrectionReqContext,
)
from datetime import datetime
from app.utils.stopwatch import Stopwatch
from app.utils.file import _create_temp_files, _cleanup_temp_files
from app.utils.time import get_current_time
from app.utils.ssh import check_passwordless_ssh
from app.utils.file import create_directory_recursive
from app.utils.module import get_module_name_from_codeblock


class DesignInfo(BaseModel):
    design_name: str
    root_dir: str
    top_path: str
    dependencies_path: list[str]
    outdir: str = f""
    outdir_rel: str = f""
    errors: list[str] = []
    run_test_run_id: str = ""

    def __init__(
        self,
        design_name: str,
        root_dir: str,
        outdir: str,
        outdir_rel: str,
        top_path: str,
        dependencies_path: list[str],
        errors: list[str] = [],
    ):
        super().__init__(
            design_name=design_name,
            root_dir=root_dir,
            top_path=top_path,
            dependencies_path=dependencies_path,
            dependencies_files_contents=[],
            errors=errors,
            outdir=outdir,
            outdir_rel=outdir_rel,
        )

        if not self.root_dir:
            self.errors.append("The root directory is missing.")
        else:
            self.root_dir = os.path.abspath(self.root_dir)
            if not self.top_path:
                self.errors.append("The top file path is missing.")
            else:
                self.top_path = canonical_path(self.top_path, self.root_dir)

            self.dependencies_path = [
                canonical_path(dep, self.root_dir) for dep in self.dependencies_path
            ]


class GenerateUnitTest(BaseModel):

    design_name: str
    config: UnitTestConfig
    design_info: DesignInfo
    client_v2: ClientV2
    unit_test_flow: str

    stopwatch: Stopwatch = Stopwatch()

    syntax_correction: SyntaxCorrection = SyntaxCorrection()
    codeblocks_to_compose: Dict[str, List] = {}

    top_file: Optional[TextIO] = None
    dependency_files: List[TextIO] = []

    parsed_design: Dict = {}
    mental_model: Dict = {}
    scenarios: Dict = {}
    testbench_code_before_syntax_fix: str = ""
    testbench_code_gen_prompt_response: List = []
    testbench_code_after_syntax_fix: str = ""
    decomposed_unit_tests: Dict = {}
    run_test_result: Dict = {}
    dut_compile_check_result: Dict = {}
    results_for_db: Dict = {}

    model_config = ConfigDict(arbitrary_types_allowed=True)

    def __init__(self, design_name, config, design_info, client_v2, unit_test_flow):
        super().__init__(
            design_name=design_name,
            config=config,
            design_info=design_info,
            client_v2=client_v2,
            unit_test_flow=unit_test_flow,
        )

    def measure_elapsed_time(self):
        return self.stopwatch.measure_elapsed_time

    # @measure_elapsed_time
    def init_outdir(self):
        try:
            if os.path.exists(self.design_info.outdir):
                shutil.rmtree(self.design_info.outdir)
        except FileNotFoundError:
            # Directory doesn't exist, nothing to delete
            pass
        except PermissionError as pe:
            raise PermissionError("Permission denied while deleting directory:", pe)
        except Exception as e:
            raise RuntimeError("An error occurred while removing directory:", e)

        try:
            if not os.path.exists(self.design_info.outdir):
                os.makedirs(self.design_info.outdir)
        except FileExistsError:
            # Directory already exists, nothing to create
            pass
        except PermissionError as pe:
            raise PermissionError("Permission denied while creating directory:", pe)
        except Exception as e:
            raise RuntimeError("An error occurred while creating directory:", e)

    def copy_design_files_to_outdir(self):
        dut_outdir = os.path.join(self.design_info.outdir, "dut")
        if not os.path.exists(dut_outdir):
            create_directory_recursive(dut_outdir)
        shutil.copy(self.design_info.top_path, dut_outdir)
        for dep in self.design_info.dependencies_path:
            shutil.copy(dep, dut_outdir)

    def compile_check_dut(self) -> List[str]:
        local_errors = []
        dut_files: List[TextIO]
        sva_files: List[TextIO]
        try:
            if self.config.unit_test_flow == "Formal":
                jasper_config = self._get_jasper_config()
                dut_files = [open(self.design_info.top_path, encoding="utf-8")]

                sva_files = []
                if (
                    jasper_config["clocks"]
                    and jasper_config["resets"]
                    and jasper_config["top_module"]
                ):
                    compile_check_res = self.client_v2.jasper_syntax_check(
                        jasper_config["top_module"],
                        jasper_config["clocks"],
                        jasper_config["resets"],
                        dut_files=dut_files,
                        sva_files=sva_files,
                    )
                else:
                    compile_check_res = {
                        "error": "Error: Missing jasper configuration",
                        "log": {"errors": [], "warnings": []},
                    }

                for file in dut_files:
                    file.close()
                for file in sva_files:
                    file.close()
            else:
                dut_files = []
                for file_path in self.design_info.dependencies_path:
                    dut_files.append(open(file_path, encoding="utf-8"))
                dut_files.append(open(self.design_info.top_path, encoding="utf-8"))
                compile_check_res = self.client_v2.simulation_syntax_check(
                    sva_files=dut_files
                )

        except Exception as err:
            local_errors.append(f"Failed to invoke run-tests: {err}")
            print(
                f"[ERROR {get_current_time()}] Failed to syntax check design '{self.design_name}': {err}",
                flush=True,
            )

            traceback.print_exc()
            traceback_str = "".join(
                traceback.format_exception(None, err, err.__traceback__)
            )
            print(f"[ERROR {get_current_time()}] {traceback_str}", flush=True)
        else:
            run_id = "N.A."
            if "runId" in compile_check_res:
                run_id = compile_check_res["runId"]

            str_msg = f"[INFO {get_current_time()}] Invoked compile DUT for design '{self.design_name}', the run ID is: {run_id}."
            print(str_msg, flush=True)
            self.dut_compile_check_result = self._parse_eda_run_test_result(
                compile_check_res
            )

        return local_errors

    def read_design_files(self) -> List[str]:
        errors = []
        if not os.path.exists(self.design_info.top_path):
            errors.append(f"Top file '{self.design_info.top_path}' does not exist.")
        for rtl_file_path in self.design_info.dependencies_path:
            if not os.path.exists(rtl_file_path):
                errors.append(f"Dependency file '{rtl_file_path}' does not exist.")
        if errors:
            return errors

        self.top_file = open(self.design_info.top_path, encoding="utf-8")
        for rtl_file_path in self.design_info.dependencies_path:
            file = open(rtl_file_path, encoding="utf-8")
            self.dependency_files.append(file)
        return []

    def parse_design(self) -> List[str]:
        if self.top_file:
            self.top_file.seek(0)
        for dep in self.dependency_files:
            dep.seek(0)
        self.parsed_design = self.client_v2.parse_design(
            top_file=self.top_file,
            dependency_files=self.dependency_files,
        )
        return []

    def generate_mental_model(self) -> List[str]:
        if self.top_file:
            self.top_file.seek(0)
        self.mental_model = self.client_v2.generate_mental_model(
            top_file=self.top_file,
            parsed_design=self.parsed_design,
        )
        return []

    def generate_unit_test_scenarios(self) -> List[str]:
        self.scenarios = self.client_v2.generate_unit_test_scenarios(
            self.mental_model, unit_test_flow=self.config.unit_test_flow
        )
        return []

    def generate_unit_tests(self) -> List[str]:
        testbench = self.client_v2.generate_unit_tests(
            mental_model=self.mental_model,
            scenarios=self.scenarios,
            parsed_design=self.parsed_design,
            unit_test_flow=self.config.unit_test_flow,
        )
        self.testbench_code_before_syntax_fix = (
            testbench["code"] if "code" in testbench else ""
        )
        self.testbench_code_gen_prompt_response = testbench.get("meta_data", {}).get(
            "logs", []
        )

        return []

    def decompose_unit_tests(self) -> List[str]:
        self.decomposed_unit_tests = self.client_v2.decompose_unit_tests(
            self.testbench_code_before_syntax_fix,
            unit_test_flow=self.config.unit_test_flow,
            dut_parsed_model=self.parsed_design,
        )
        return []

    # @measure_elapsed_time
    def fix_syntax_issues(self) -> List[str]:
        errors_local: List[str] = []

        code_to_fix = self.testbench_code_before_syntax_fix
        # TODO: Add functional coverage to the code to fix
        # if self.config.unit_test_flow == "Simulation":
        #     code_to_fix += self.func_cov.result

        def safety_checks():
            if self.config.unit_test_flow == "Simulation":
                if "modules" not in self.decomposed_unit_tests:
                    print("Error: No modules found in testbench", flush=True)
                    return errors_local
                if "tasks" not in self.decomposed_unit_tests:
                    print("Error: No tasks found in testbench", flush=True)
                    return errors_local
            else:
                if "codeblocks" not in self.decomposed_unit_tests:
                    print("Error: No codeblocks found in testbench", flush=True)
                    return errors_local

        def init_correction_history():
            # In the first attempt, we will check the syntax of all the modules
            codeblocks_to_fix = []
            if self.config.unit_test_flow == "Simulation":
                codeblocks_to_fix = (
                    self.decomposed_unit_tests["tasks"]
                    + self.decomposed_unit_tests["modules"]
                )
            else:
                codeblocks_to_fix = self.decomposed_unit_tests["codeblocks"]
            for module_codeblock_raw in codeblocks_to_fix:
                self.syntax_correction.codeblocks.append(
                    SyntaxCorrectionDetails(
                        orig_code=module_codeblock_raw,
                        final_code=module_codeblock_raw,
                        correction_history=[
                            CorrectionReqContext(
                                input_code=module_codeblock_raw,
                                output_code=module_codeblock_raw,
                            )
                        ],
                    )
                )

        def update_correction_history():
            # In subsequent attempts, we will only check the syntax of the modules that had issues in the previous attempt
            nr_of_modules_with_issues = 0
            for module in self.syntax_correction.codeblocks:
                syntax_correction_details = module.correction_history[-1]
                if (
                    syntax_correction_details.syntax_issues_checked
                    and not syntax_correction_details.has_syntax_issue()
                ):
                    module.final_code = syntax_correction_details.output_code

                else:
                    nr_of_modules_with_issues += 1
                    last_attempt_code = syntax_correction_details.output_code
                    module.correction_history.append(
                        CorrectionReqContext(
                            input_code=last_attempt_code,
                            output_code=last_attempt_code,
                        )
                    )
            return nr_of_modules_with_issues

        def skip_syntax_check(cur_attempt, module: SyntaxCorrectionDetails):
            result = (
                # in the first attempt we dont want to skip syntax checking
                cur_attempt != 0
                # in the subsequent attempts, we want to skip if in the last attempt there was no syntax issues.
                and module.correction_history[-1].syntax_issues_checked
            )
            return result

        def perform_syntax_check_for_syntax_correction(
            module_codeblock_raw: str,
        ):
            syntax_check_result = {}
            if self.unit_test_flow == "Simulation":
                try:
                    design_files = []
                    for file in self.dependency_files + [self.top_file]:
                        if file is None:
                            continue
                        file.seek(0)
                        design_files.append(file)

                    temp_file_names, file_list = _create_temp_files(
                        file_contents=[module_codeblock_raw],
                        file_key="files",
                    )
                    # syntax_check_result = self.client_v2.slang_compile_check(
                    #     top_module=get_module_name_from_codeblock(module_codeblock_raw),
                    #     files=design_files + file_list,
                    # )
                    syntax_check_result = self.client_v2.simulation_syntax_check(
                        design_files + file_list
                    )
                    _cleanup_temp_files(
                        file_list,
                        temp_file_names,
                    )
                except Exception as e:
                    print(f"Error in syntax check: {e}", flush=True)
                    syntax_check_result = {
                        "runId": "N.A.",
                        "log": {
                            "errors": [f"Error in syntax check: {e}"],
                            "warnings": [],
                        },
                    }
            else:
                temp_file_names, file_list = _create_temp_files(
                    file_contents=[module_codeblock_raw],
                    file_key="files",
                )
                dut_module_name = self.parsed_design["name"]
                clock_ports = [clk["name"] for clk in self.parsed_design["clockPorts"]]
                reset_ports = [rst["name"] for rst in self.parsed_design["resetPorts"]]
                try:
                    syntax_check_result = self.client_v2.jasper_syntax_check(
                        dut_module_name,
                        clocks=clock_ports,
                        resets=reset_ports,
                        dut_files=[],
                        sva_files=file_list,
                    )
                except Exception as e:
                    print(f"Error in syntax check: {e}", flush=True)

                _cleanup_temp_files(
                    file_list,
                    temp_file_names,
                )

            return syntax_check_result

        def read_errors_and_warnings_from_syntax_check_results(
            syntax_check_result,
        ) -> Tuple[List[str], List[str], List[str]]:
            local_errors: List[str] = []
            errors = []
            warnings = []
            if self.config.use_slang_for_syntax_ckeck:
                errors = syntax_check_result.get("errors", [])
                warnings = syntax_check_result.get("warnings", [])
            elif self.unit_test_flow == "Simulation":
                if "log" not in syntax_check_result:
                    print(
                        "Unexpected syntax check result. Expected 'log' key in syntax check result.",
                        flush=True,
                    )
                    return errors_local, [], []
                if "errors" not in syntax_check_result["log"]:
                    print(
                        "Unexpected syntax check result. Expected 'errors' key in syntax check result.",
                        flush=True,
                    )
                    return errors_local, [], []
                else:
                    errors = syntax_check_result["log"]["errors"]

                if "warnings" not in syntax_check_result["log"]:
                    print(
                        "Unexpected syntax check result. Expected 'warnings' key in syntax check result.",
                        flush=True,
                    )
                    return errors_local, [], []
                else:
                    warnings = syntax_check_result["log"]["warnings"]
            else:
                if "errors" in syntax_check_result:
                    errors = syntax_check_result["errors"]
                if "warnings" in syntax_check_result:
                    warnings = syntax_check_result["warnings"]

            return errors_local, errors, warnings

        safety_checks()
        for cur_attempt in range(self.config.nr_of_syntax_fix_attempts):
            if cur_attempt == 0:
                init_correction_history()
            else:
                nr_of_modules_with_issues = update_correction_history()
                if nr_of_modules_with_issues == 0:
                    # No modules had issues in the previous attempt, so we can break
                    break

            codeblocks_that_need_syntax_check = []
            codeblocks_that_need_syntax_check_indexes = []

            for cb_id, module in enumerate(self.syntax_correction.codeblocks):
                if skip_syntax_check(cur_attempt, module):
                    continue

                module_codeblock_raw = module.correction_history[-1].input_code
                syntax_check_result = perform_syntax_check_for_syntax_correction(
                    module_codeblock_raw
                )

                errors_local, errors, warnings = (
                    read_errors_and_warnings_from_syntax_check_results(
                        syntax_check_result
                    )
                )

                # ignore warning in the syntax check flow
                warnings = []

                module.correction_history[-1].syntax_issues_checked = True
                module.correction_history[-1].syntax_issues = SyntaxIssues(
                    errors, warnings
                )
                if len(errors) + len(warnings) != 0:

                    correction_context = {
                        "code": module_codeblock_raw,
                        "syntax_issues": {"errors": errors, "warnings": warnings},
                        "other_issues": [],
                    }
                    codeblocks_that_need_syntax_check.append(correction_context)
                    codeblocks_that_need_syntax_check_indexes.append(cb_id)
                else:
                    module.correction_history[-1].output_code = module_codeblock_raw
                    module.final_code = module_codeblock_raw
            corrected_codes = self.client_v2.fix_syntax_of_unit_tests(
                mental_model=self.mental_model,
                dut_parsed_model=self.parsed_design,
                correction_contexts=codeblocks_that_need_syntax_check,
                unit_test_flow=self.config.unit_test_flow,
            )
            for idx, codeblock_idx in enumerate(
                codeblocks_that_need_syntax_check_indexes
            ):
                output_code_key = "output_code"
                if self.config.unit_test_flow == "Formal":
                    output_code_key = "code"
                self.syntax_correction.codeblocks[codeblock_idx].correction_history[
                    -1
                ].output_code = corrected_codes[idx][output_code_key]
                self.syntax_correction.codeblocks[codeblock_idx].final_code = (
                    corrected_codes[idx][output_code_key]
                )

            # for idx, cb in enumerate(self.syntax_correction.codeblocks):
            #     if len(cb.correction_history) > cur_attempt:
            #         a = cb.correction_history[cur_attempt].syntax_issues_checked
            #         b = cb.correction_history[cur_attempt].has_syntax_issue()
            #         if a and b:
            #             print(f"{idx} {a} {b}")
            #         else:
            #             print(f"{idx} {a} {b} ******")
            #     else:
            #         print(f"{idx} Did not try. Fixed before.")

            str_msg = f"[INFO {get_current_time()}] Syntax correction attempt {cur_attempt + 1} for design '{self.design_name}' completed."
            print(str_msg, flush=True)

        if self.config.unit_test_flow == "Simulation":
            self.codeblocks_to_compose["tasks"] = []
            self.codeblocks_to_compose["modules"] = []

            for idx, cb in enumerate(
                self.syntax_correction.codeblocks[
                    : len(self.decomposed_unit_tests["tasks"])
                ]
            ):
                if not cb.correction_history[-1].has_syntax_issue():
                    self.codeblocks_to_compose["tasks"].append(cb.final_code)

            for idx, cb in enumerate(
                self.syntax_correction.codeblocks[
                    len(self.decomposed_unit_tests["tasks"]) :
                ]
            ):
                if not cb.correction_history[-1].has_syntax_issue():
                    self.codeblocks_to_compose["modules"].append(cb.final_code)

            unit_test_tb = self.client_v2.compose_simulation_unit_tests(
                tasks=self.codeblocks_to_compose["tasks"],
                modules=self.codeblocks_to_compose["modules"],
                dut_parsed_model=self.parsed_design,
            )
        else:
            self.codeblocks_to_compose["modules"] = []

            for idx, cb in enumerate(self.syntax_correction.codeblocks):
                if not cb.correction_history[-1].has_syntax_issue():
                    self.codeblocks_to_compose["modules"].append(cb.final_code)

            unit_test_tb = self.client_v2.compose_formal_unit_tests(
                codeblocks=self.codeblocks_to_compose["modules"],
                dut_parsed_model=self.parsed_design,
            )

        if "code" not in unit_test_tb:
            print("Error composing unit tests", flush=True)
            return errors_local

        self.testbench_code_after_syntax_fix = unit_test_tb["code"]

        return errors_local

    def add_links_to_syntax_report(self):
        # open outdir/tt_ex/syntax_correction.json.html file and replace all the instances of module\s_+test_\w+ with a link to the corresponding module
        file_path = os.path.join(self.design_info.outdir, "syntax_correction.json.html")
        with open(file_path, "r") as file:
            content = file.read()
            # Use regular expression to find all instances of module\s_+test_\w+
            pattern = r"module\s+test_\w+\b"
            matches = re.findall(pattern, content)

            # Replace each match with a link to the corresponding module
            for match in matches:
                module_name = match.replace("module", "").strip()
                link = f'<a href="syntax_correction/{module_name}.html">{match}</a>'
                # content = content.replace(match, link)
                content = re.sub(rf"\b{re.escape(match)}\b", link, content)

        with open(file_path, "w") as file:
            file.write(content)

    def add_links_to_scenarios_report(self):
        # open outdir/tt_ex/scenarios.json.html file and replace all the instances of module\s_+test_\w+ with a link to the corresponding module
        file_path = os.path.join(self.design_info.outdir, "scenarios.json.html")

        with open(file_path, "r") as file:
            content = file.read()

        # Use regular expression to find all instances of the pattern
        pattern = r'&quot;name&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;(\w+)&quot;</span>'
        matches = re.findall(pattern, content)

        # Replace each match with a link to the corresponding module
        for match in matches:
            link = f'&quot;name&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;<a href="syntax_correction/test_{match}.html">{match}</a>&quot;</span>'
            content = re.sub(
                rf'&quot;name&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;{match}&quot;</span>',
                link,
                content,
            )

        with open(file_path, "w") as file:
            file.write(content)

    # @measure_elapsed_time
    def write_results_to_disk(self):
        dut_files = [self.design_info.top_path] + self.design_info.dependencies_path
        for file in dut_files:
            title = os.path.basename(file)
            with open(file, "r") as f:
                content_to_write = f.read()
                write_str_to_file(
                    os.path.join(self.design_info.outdir, "dut", f"{title}.html"),
                    content=convert_verilog_to_html(content_to_write),
                )

        for design, title, type in [
            (self.parsed_design, "parsed_design", "json"),
            (self.mental_model, "mental_model", "json"),
            (self.scenarios, "scenarios", "json"),
            (self.testbench_code_before_syntax_fix, "tb_before_fix", "sv"),
            (self.decomposed_unit_tests, "decomposed", "json"),
            (self.syntax_correction.model_dump(), "syntax_correction", "json"),
            (self.testbench_code_after_syntax_fix, "tb_after_syntax_fix", "sv"),
        ]:

            if type == "json":
                content_to_write = json.dumps(design, indent=4)
                content_to_write_html = convert_json_to_html(content_to_write)
                write_str_to_file(
                    os.path.join(self.design_info.outdir, f"{title}.json"),
                    content_to_write,
                )
                write_str_to_file(
                    os.path.join(self.design_info.outdir, f"{title}.json.html"),
                    content_to_write_html,
                )
            elif type == "sv":
                content_to_write = design
                content_to_write_html = convert_verilog_to_html(content_to_write)
                write_str_to_file(
                    os.path.join(self.design_info.outdir, f"{title}.sv"),
                    content_to_write,
                )
                write_str_to_file(
                    os.path.join(self.design_info.outdir, f"{title}.sv.html"),
                    content_to_write_html,
                )
            else:
                print(f"Error: Unknown type {type}")

    # @measure_elapsed_time
    def prepare_kpi_results(self, unit_test_flow="Simulation"):
        res = Result(
            design_name=self.design_name,
            timestamp=get_current_time(),
        )
        self.results_for_db = res.get_data_for_db(
            scenarios=self.scenarios,
            syntax_correction=self.syntax_correction,
            run_test_result=self.run_test_result,
        )

        return self.results_for_db

    def analyze_issues(self):
        def process_issues(issues, issues_per_module):
            """
            Process issues (errors or warnings) to extract meaningful parts and count occurrences.
            """

            issues_hist = [{} for _ in issues]
            issues_hist_per_module = [{} for _ in issues]
            for attempt, issue_list in enumerate(issues):
                for issue in issue_list:
                    if (
                        "Review the log file for errors with the code" in issue
                        or "Error (*E) or soft error (*SE) occurred during elaboration"
                        in issue
                    ):
                        continue

                    # Extract the meaningful part of the issue
                    parts = issue.split(":")
                    res = ":".join(parts[2:]) if len(parts) >= 3 else ""
                    res = res.split("at 'test_")[0] if "at 'test_" in res else res

                    # Count occurrences
                    if res not in issues_hist[attempt]:
                        issues_hist[attempt][res] = 1
                    else:
                        issues_hist[attempt][res] += 1

                for module_name, issues in issues_per_module[attempt].items():
                    for issue in issues:
                        if (
                            "Review the log file for errors with the code" in issue
                            or "Error (*E) or soft error (*SE) occurred during elaboration"
                            in issue
                        ):
                            continue

                        # Extract the meaningful part of the issue
                        parts = issue.split(":")
                        res = ":".join(parts[2:]) if len(parts) >= 3 else ""
                        res = res.split("at 'test_")[0] if "at 'test_" in res else res

                        # Count occurrences
                        if res not in issues_hist_per_module[attempt]:
                            issues_hist_per_module[attempt][res] = {module_name: 1}
                        elif module_name not in issues_hist_per_module[attempt][res]:
                            issues_hist_per_module[attempt][res][module_name] = 1
                        else:
                            issues_hist_per_module[attempt][res][module_name] += 1
            return issues_hist, issues_hist_per_module

        def print_issues(issues_hist: dict, issue_type: str) -> str:
            html_report = ""
            for attempt, issues in enumerate(issues_hist):
                if len(issues):
                    html_report += (
                        f"<h3>{issue_type.capitalize()} attempt: {attempt}</h3>"
                    )
                    html_report += """
            <table> 
            <tr>
                <th>Occurrences</th>
                <th>Error</th>
                <th>Modules</th>
            </tr>
            """
                    for issue, count in sorted(
                        issues.items(), key=lambda x: x[1], reverse=True
                    ):
                        html_report += f"""<tr><td>{count}</td>\n"""
                        html_report += f"""<td>{issue}</td>\n"""
                        html_report += f"""<td>{issue}</td>\n"""
                        html_report += f"""</tr>\n"""
                    html_report += "</table>"
                else:
                    html_report += (
                        f"<h3>{issue_type.capitalize()} attempt {attempt}: none</h3>"
                    )

            return html_report

        errors_per_attempt_per_module, warnings_per_attempt_per_module = [], []
        errors_per_attempt, warnings_per_attempt = [], []
        for cb in self.syntax_correction.codeblocks:
            module_name = get_module_name_from_codeblock(cb.final_code)
            for attempt_index, correction in enumerate(cb.correction_history):
                # Ensure lists are long enough
                while len(errors_per_attempt) <= attempt_index:
                    errors_per_attempt.append([])
                    warnings_per_attempt.append([])

                    errors_per_attempt_per_module.append({})
                    warnings_per_attempt_per_module.append({})

                # Append errors and warnings
                errors_per_attempt[attempt_index].extend(
                    correction.syntax_issues.errors
                )
                warnings_per_attempt[attempt_index].extend(
                    correction.syntax_issues.warnings
                )

                if correction.syntax_issues.errors:
                    errors_per_attempt_per_module[attempt_index][
                        module_name
                    ] = correction.syntax_issues.errors

                if correction.syntax_issues.warnings:
                    warnings_per_attempt_per_module[attempt_index][
                        module_name
                    ] = correction.syntax_issues.warnings

        # Process and print errors and warnings
        errors_hist, errors_hist_per_module = process_issues(
            errors_per_attempt, errors_per_attempt_per_module
        )
        warnings_hist, warnings_hist_per_module = process_issues(
            warnings_per_attempt, warnings_per_attempt_per_module
        )

        html_report = f"""
    <html>
        <head>
            <style>
                table {{
                    border-collapse: collapse;
                    }}
                th, td {{
                    border: 1px solid black;
                    text-align: left;
                    padding: 8px;
                }}
                th {{
                        background-color: #f2f2f2;
                }}
            </style>
        </head>
        <body>
            {print_issues(errors_hist, "error")}
            {print_issues(warnings_hist, "warning")}
        </body>
    </html>
    """
        write_str_to_file(
            os.path.join(self.design_info.outdir, "issues.html"),
            html_report,
        )

    def _get_jasper_config(self):
        module_name = self.parsed_design["name"]
        clocks = []
        resets = []
        for clock_prt in self.parsed_design["clockPorts"]:
            clocks.append(clock_prt["name"])
        for reset_prt in self.parsed_design["resetPorts"]:
            resets.append(reset_prt["name"])

        return {
            "top_module": module_name,
            "clocks": clocks,
            "resets": resets,
        }

    def copy_run_results_to_outdir(self) -> List[str]:
        local_errors: List[str] = []
        check_passwordless_ssh(
            self.design_info.run_test_run_id,
            self.design_info.outdir,
        )
        return local_errors

    def run_unit_tests(self) -> List[str]:
        local_errors: List[str] = []
        dut_files: List[TextIO] = []
        try:
            if self.config.unit_test_flow == "Formal":
                jasper_config = self._get_jasper_config()
                dut_files = [open(self.design_info.top_path, encoding="utf-8")]
                tb_after_syntax_fix_path = os.path.join(
                    self.design_info.outdir,
                    "tb_after_syntax_fix.sv",
                )
                sva_files: List[TextIO] = [
                    open(
                        tb_after_syntax_fix_path,
                        encoding="utf-8",
                    )
                ]
                if (
                    jasper_config["clocks"]
                    and jasper_config["resets"]
                    and jasper_config["top_module"]
                ):
                    invoke_eda_res = self.client_v2.run_formal_tests(
                        jasper_config["top_module"],
                        jasper_config["clocks"],
                        jasper_config["resets"],
                        dut_files=dut_files,
                        sva_files=sva_files,
                    )
                else:
                    invoke_eda_res = {
                        "error": "Error: Missing jasper configuration",
                        "log": {"errors": [], "warnings": []},
                    }

                for file in dut_files:
                    file.close()
                for file in sva_files:
                    file.close()
            else:

                for file_path in self.design_info.dependencies_path:
                    dut_files.append(open(file_path, encoding="utf-8"))

                dut_files.append(open(self.design_info.top_path, encoding="utf-8"))

                testbench_files: List[TextIO] = [
                    open(
                        os.path.join(
                            self.design_info.outdir,
                            "tb_after_syntax_fix.sv",
                        ),
                        encoding="utf-8",
                    )
                ]
                for file in dut_files:
                    file.seek(0)
                for file in testbench_files:
                    file.seek(0)
                invoke_eda_res = self.client_v2.run_simulation_tests(
                    dut_files=dut_files,
                    testbench_files=testbench_files,
                )
                for file in dut_files:
                    file.close()
                for file in testbench_files:
                    file.close()
        except Exception as err:
            local_errors.append(f"Failed to invoke run-tests: {err}")
            print(
                f"[ERROR {get_current_time()}] Failed to invoke run-tests for design '{self.design_name}': {err}",
                flush=True,
            )

            traceback.print_exc()
            traceback_str = "".join(
                traceback.format_exception(None, err, err.__traceback__)
            )
            print(f"[ERROR {get_current_time()}] {traceback_str}", flush=True)
        else:
            run_id = "N.A."
            if "runId" in invoke_eda_res:
                run_id = invoke_eda_res["runId"]

            str_msg = f"[INFO {get_current_time()}] Invoked run-tests for design '{self.design_name}', the run ID is: {run_id}."
            print(str_msg, flush=True)
            self.run_test_result = self._parse_eda_run_test_result(invoke_eda_res)

        return local_errors

    # @measure_elapsed_time
    def _parse_eda_run_test_result(self, invoke_eda_res: dict) -> Dict[str, Any]:
        errors = []
        warnings = invoke_eda_res.get("log", {}).get("warnings", [])
        covers = []
        asserts = []
        coverage_summary = ""
        coverage_details = []
        run_id = invoke_eda_res.get("runId", "")
        self.design_info.run_test_run_id = run_id
        tests_results = invoke_eda_res.get("log", {}).get("tests", {})

        errors.extend(invoke_eda_res.get("log", {}).get("errors", []))

        if self.config.unit_test_flow == "Formal":
            if "error" in invoke_eda_res:
                errors.append(invoke_eda_res["error"])

            result = invoke_eda_res.get("result", {}).get("results", {})
            covers = [
                {"name": cvr["Name"], "result": cvr["Result"]}
                for cvr in result.get("cover", [])
            ]
            asserts = [
                {"name": asrt["Name"], "result": asrt["Result"]}
                for asrt in result.get("assert", [])
            ]

            coverage = invoke_eda_res.get("result", {}).get("coverage", {})
            coverage_summary = coverage.get("summary", "")
            coverage_details = [
                {
                    "name": item["name"],
                    "formal_coverage": item["formal_coverage"],
                    "stimuli_coverage": item["stimuli_coverage"],
                    "checker_coverage": item["checker_coverage"],
                }
                for item in coverage.get("details", [])
            ]
        elif self.config.unit_test_flow == "Simulation":
            coverage = invoke_eda_res.get("coverage", {})
            for coverage_item in [
                "Block Average",
                "Block Covered",
                "Expression Average",
                "Expression Covered",
                "Toggle Average",
                "Toggle Covered",
                "Statement Average",
                "Statement Covered",
                "Fsm Average",
                "Fsm Covered",
                "Assertion Average",
                "Assertion Covered",
                "CoverGroup Average",
                "CoverGroup Covered",
            ]:
                coverage_details.append(
                    {
                        "name": coverage_item,
                        "value": coverage.get(coverage_item, "0"),
                    }
                )

        run_test_result = {
            "coverage-summary": coverage_summary,
            "errors": errors,
            "warnings": warnings,
            "covers": covers,
            "asserts": asserts,
            "coverage-details": coverage_details,
            "run-id": run_id,
            "tests": tests_results,
        }

        return run_test_result

    # @measure_elapsed_time
    def get_duration_for_cur_design(self):
        time_delta = -1
        days = int(time_delta // 86400)
        hours = int((time_delta % 86400) // 3600)
        minutes = int((time_delta % 3600) // 60)
        seconds = int(time_delta % 60)

        parts = []
        if days > 0:
            parts.append(f"{days} days")
        if hours > 0:
            parts.append(f"{hours} hours")
        if minutes > 0:
            parts.append(f"{minutes} minutes")
        if seconds > 0:
            parts.append(f"{seconds} seconds")

        # return ", ".join(parts) if parts else "0 seconds"
        return ""

    # @measure_elapsed_time
    def get_raw_logs_to_show(self):
        # TODO:  (("design (not implemented yet)", self.design_name),),
        dut_files = []
        # TODO: Add + self.design_info.dependencies_path to show dependencies
        for file in [self.design_info.top_path]:
            dut_base_name = os.path.basename(file)
            dut_files.append((dut_base_name, f"dut/{dut_base_name}.html"))

        logs = [dut_files]
        logs.extend(
            [
                (
                    ("mental_model", "mental_model.json.html"),
                    ("parsed_design", "parsed_design.json.html"),
                ),
                (
                    ("scenarios", "scenarios.json.html"),
                    ("tb_before_fix", "tb_before_fix.sv.html"),
                ),
                (
                    ("decomposed", "decomposed.json.html"),
                    ("syntax_correction", "syntax_correction.json.html"),
                ),
                # (("issues", "issues.html"),),
                (("tb_after_syntax_fix", "tb_after_syntax_fix.sv.html"),),
            ]
        )

        html_report = ""
        report_logs = []
        for idx, log_line in enumerate(logs):
            items_per_line = []
            for items in log_line:
                log_name, log_path = items
                log_path_abs = os.path.join(self.design_info.outdir, log_path)
                log_path_rel = os.path.join(self.design_info.outdir_rel, log_path)
                if os.path.exists(log_path_abs):
                    items_per_line.append(f'<a href="{log_path_rel}">{log_name}</a>')
                else:
                    items_per_line.append(f"{log_name}")

            if idx == 0:
                report_logs.append(", ".join(items_per_line))
            else:
                report_logs.append(",&nbsp;".join(items_per_line))

        html_report += "<br>".join(report_logs)
        return html_report

    # @measure_elapsed_time
    def write_kpi_plots(
        self,
        data: List[Dict[str, int | str]],
        unit_test_flow: str = "Simulation",
    ):
        def get_html_for_specific_params(params: List[str]) -> str:
            formatted_data_params = ", ".join([f'"{params}"' for params in params])
            formatted_data_cols = ", ".join([f"row.{params}" for params in params])

            format_entry = lambda entry: "{{ timestamp: '{}', {} }}".format(
                entry["timestamp"],
                ", ".join(["{}: {}".format(col, entry[col]) for col in params]),
            )
            formatted_js_data = list(map(format_entry, data))
            formatted_js_data_str = ",\n\t\t\t".join(formatted_js_data)
            html_report = f"""<!DOCTYPE html>
    <html>
    <head>
        <title>Google Charts Example</title>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load('current', {{'packages':['corechart']}});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {{
                // Define your data directly
                var data = [ {formatted_js_data_str} ];

                var formattedData = [["Timestamp", {formatted_data_params}]];

                data.forEach(row => {{
                    formattedData.push([new Date(row.timestamp), {formatted_data_cols}]);
                }});

                var dataTable = google.visualization.arrayToDataTable(formattedData);

                var options = {{
                    title: 'KPI data by date',
                    hAxis: {{title: 'Date', format: 'MMM dd\\nHH:mm'}},
                    vAxis: {{title: 'KPI'}},
                    legend: {{ position: 'right', textStyle: {{ fontSize: 12 }} }},
                    chartArea: {{ width: '65%', height: '70%' }},
                    pointSize: 5
                }};

                var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
                chart.draw(dataTable, options);
            }}
        </script>
    </head>
    <body>
        <div id="chart_div" style="width: 1450px; height: 700px;"></div>
    </body>
    </html>
    """
            return html_report

        if unit_test_flow == "Simulation":
            html_report = get_html_for_specific_params(
                [
                    "scenarios_generated",
                    "initial_syntax_errors",
                    "initial_syntax_warnings",
                    "syntax_errors_first_fix",
                    "syntax_warnings_first_fix",
                    "syntax_errors_second_fix",
                    "syntax_warnings_second_fix",
                    "syntax_errors_third_fix",
                    "syntax_warnings_third_fix",
                    "syntax_errors_fourth_fix",
                    "syntax_warnings_fourth_fix",
                    "scenarios_remaining",
                    "passed_test_cases",
                ]
            )
        else:
            html_report = get_html_for_specific_params(
                [
                    "scenarios_generated",
                    "initial_syntax_errors",
                    "initial_syntax_warnings",
                    "syntax_errors_first_fix",
                    "syntax_warnings_first_fix",
                    "syntax_errors_second_fix",
                    "syntax_warnings_second_fix",
                    "syntax_errors_third_fix",
                    "syntax_warnings_third_fix",
                    "syntax_errors_fourth_fix",
                    "syntax_warnings_fourth_fix",
                    "scenarios_remaining",
                    "number_of_assertions",
                    "number_of_cover_cases",
                    "passed_assertions",
                    "passed_cover_cases",
                    "total_coverage",
                ]
            )
        write_str_to_file(
            os.path.join(self.design_info.outdir, "kpi_report.html"), html_report
        )

    def Write_fix_syntax_report(self):
        pass
        # TODO: Implement this method
        # html_report = f"""<!DOCTYPE html>"""
        # for cb in self.syntax_correction.codeblocks:
        #     cb_name = extract_module_names_from_verilog_code(cb.orig_code)
        #     nr_initial_syntax_issues = len(cb.correction_history[0].syntax_issues)

        #     print (f"Codeblock: {cb_name}, Initial syntax issues: {nr_initial_syntax_issues}\n")

    def dump_per_test_all_results(self):
        for cb_idx, cb in enumerate(self.syntax_correction.codeblocks):
            try:
                module_name = get_module_name_from_codeblock(cb.orig_code)
                if not module_name:
                    module_name = f"module_{cb_idx}"

                logs = [
                    (
                        "title-text",
                        {
                            "title": "Scenario name",
                            "text": self.scenarios[cb_idx]["name"],
                        },
                    ),
                    (
                        "title-text",
                        {
                            "title": "Scenario category",
                            "text": self.scenarios[cb_idx]["category"],
                        },
                    ),
                    (
                        "title-text",
                        {
                            "title": "Scenario system prompt",
                            "text": self.scenarios[cb_idx]
                            .get("metadata", "")
                            .get("logs", "")
                            .get("system_prompt", ""),
                        },
                    ),
                    (
                        "title-text",
                        {
                            "title": "Scenario user prompt",
                            "text": self.scenarios[cb_idx]
                            .get("metadata", "")
                            .get("logs", "")
                            .get("user_prompt", ""),
                        },
                    ),
                    (
                        "title-text",
                        {
                            "title": "Scenario description",
                            "text": self.scenarios[cb_idx]["description"],
                        },
                    ),
                ]

                for code_gen_step in range(
                    len(self.testbench_code_gen_prompt_response[cb_idx])
                ):
                    if (
                        "system_prompt"
                        in self.testbench_code_gen_prompt_response[cb_idx][
                            code_gen_step
                        ]
                    ):
                        system_prompt = self.testbench_code_gen_prompt_response[cb_idx][
                            code_gen_step
                        ].get("system_prompt", "")
                        logs.append(
                            (
                                "title-text",
                                {
                                    "title": f"Code generation #{code_gen_step} system_prompt",
                                    "text": system_prompt,
                                },
                            )
                        )
                        user_prompt = self.testbench_code_gen_prompt_response[cb_idx][
                            code_gen_step
                        ].get("user_prompt", "")
                        logs.append(
                            (
                                "title-text",
                                {
                                    "title": f"Code generation #{code_gen_step} user_prompt",
                                    "text": user_prompt,
                                },
                            )
                        )

                    else:
                        prompt = self.testbench_code_gen_prompt_response[cb_idx][
                            code_gen_step
                        ].get("prompt", "")
                        logs.append(
                            (
                                "title-text",
                                {
                                    "title": f"Code generation #{code_gen_step} prompt",
                                    "text": prompt,
                                },
                            )
                        )

                    response = self.testbench_code_gen_prompt_response[cb_idx][
                        code_gen_step
                    ].get("response", "")
                    logs.append(
                        (
                            "title-text",
                            {
                                "title": f"Code generation #{code_gen_step} response",
                                "text": response,
                            },
                        )
                    )

                for attempt, correction_history in enumerate(cb.correction_history):
                    logs.append(("sv", correction_history.input_code))
                    logs.append(("issues", correction_history.syntax_issues.errors))

                syntax_correction_rpt = create_syntax_correction_report(logs)
                write_str_to_file(
                    os.path.join(
                        self.design_info.outdir,
                        "syntax_correction",
                        f"{module_name}.html",
                    ),
                    content=syntax_correction_rpt,
                )
            except Exception as e:
                print(
                    f"[ERROR {get_current_time()}] Exception in dump_per_test_all_results: {e}",
                    flush=True,
                )


class Result(BaseModel):
    design_name: str
    user: str = "N.A."
    timestamp: str = "N.A."
    llm_model_name: str = "N.A."
    scenarios_generated: int = 0
    initial_tests_with_syntax_issues: int = 0
    final_tests_no_syntax_issues: int = 0
    passed_test_cases: Optional[int] = None
    overall_coverage: int = 0

    def get_data_for_db(
        self,
        scenarios: Dict,
        syntax_correction: SyntaxCorrection,
        run_test_result: Dict,
    ) -> Dict:
        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        scenarios_generated = len(scenarios)
        initial_tests_with_syntax_issues = 0
        for codeblock in syntax_correction.codeblocks:
            if (
                codeblock.correction_history[0].syntax_issues_checked
                and codeblock.correction_history[0].has_syntax_issue()
            ):
                initial_tests_with_syntax_issues += 1

        final_tests_no_syntax_issues = 0
        for codeblock in syntax_correction.codeblocks:
            if (
                codeblock.correction_history[-1].syntax_issues_checked
                and not codeblock.correction_history[-1].has_syntax_issue()
            ):
                final_tests_no_syntax_issues += 1

        passed_test_cases = 0
        for test in run_test_result.get("tests", {}):
            if test.get("result") == "PASSED":
                passed_test_cases += 1

        overall_coverage: float = 0.0
        for cov_info in run_test_result.get("coverage-details", []):
            if cov_info.get("name") == "Block Average":
                try:
                    overall_coverage = float(
                        cov_info.get("value", "0.0").replace("%", "")
                    )
                except ValueError:
                    overall_coverage = 0.0
                break

        return {
            "design_name": self.design_name,
            "user": self.user,
            "timestamp": timestamp,
            "llm_model_name": self.llm_model_name,
            "scenarios_generated": scenarios_generated,
            "initial_tests_with_syntax_issues": initial_tests_with_syntax_issues,
            "final_tests_no_syntax_issues": final_tests_no_syntax_issues,
            "passed_test_cases": passed_test_cases,
            "overall_coverage": overall_coverage,
        }
