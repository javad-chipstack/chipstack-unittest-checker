import os
import time
import copy
from typing import List, Dict
import logging
from datetime import datetime
from pydantic import BaseModel, ConfigDict
from app.kpi.mysql import MySQLWrapper
from app.utils.unit_test_config import UnitTestConfig
from app.flows.generate_unit_test import GenerateUnitTest
from chipstack_client.client_v2 import ClientV2
from app.utils.file import create_outdir, write_str_to_file
from app.flows.generate_unit_test import DesignInfo
from app.flows.top_html_report import TopHtmlReport
from app.utils.numbers import convert_to_number
from app.utils.time import get_current_time


logger = logging.getLogger(__name__)
logger.setLevel(
    logging.DEBUG
)  # Set the logging level (DEBUG, INFO, WARNING, ERROR, CRITICAL)
handler = logging.StreamHandler()
formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
handler.setFormatter(formatter)
logger.addHandler(handler)


# Create a handler for stdout
# handler = logging.StreamHandler(sys.stdout)
class RegressDesigns(BaseModel):
    """
    GenerateUnitTest is a class to generate
    """

    my_sql: MySQLWrapper = MySQLWrapper()
    config: UnitTestConfig = UnitTestConfig()
    designs: List[GenerateUnitTest] = []
    client_v2: ClientV2 = None
    formatted_datetime: str = ""
    unit_test_flow: str = ""
    outdir: str = ""
    top_html_report: TopHtmlReport = TopHtmlReport()

    model_config = ConfigDict(arbitrary_types_allowed=True)

    def init_testbench(self):
        self.unit_test_flow = self.config.unit_test_flow
        self.formatted_datetime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        if self.config.outdir == "":
            print("[ERROR {get_current_time()}] Outdir is not set in the config file")
            return ["Outdir is not set in the config file"]

        errs, self.outdir = create_outdir(self.config.outdir)
        self.top_html_report.set_start_time(datetime.now())
        return errs

    def init_db(self):
        """
        Initialize the database connection.
        """
        self.my_sql = MySQLWrapper()
        self.my_sql.connect()
        self.my_sql.create_database()
        self.my_sql.use_database()

        if not self.my_sql.check_if_table_exists("unit_test_kpi"):
            self.my_sql.create_unit_test_kpi_table(unit_test_flow="Simulation")
        if not self.my_sql.check_if_table_exists("unit_test_kpi"):
            self.my_sql.create_unit_test_kpi_table(unit_test_flow="Formal")

    def init_config(self):
        self.config = UnitTestConfig()
        self.config.chipstack_python_server = os.environ.get(
            "CHIPSTACK_PYTHON_SERVER", ""
        )
        self.config.chipstack_eda_server = os.environ.get("CHIPSTACK_EDA_SERVER", "")
        self.config.bearer_authorization_token = os.environ.get(
            "BEARER_AUTHORIZATION_TOKEN", ""
        )

    def parse_config(self, regression_control_cfg: str):
        self.config.read_and_parse_config(regression_control_cfg)
        # pass
        # cfg_parse_errs = self.config.config_safety_check(config)
        # return cfg_parse_errs
        return []

    def init_client(self):
        """
        Initialize the Chipstack client.
        """
        self.client_v2 = ClientV2(
            api_key="5118073d-5410-4c46-baaf-0beb7c1b6528",
            chipstack_python_server=self.config.chipstack_python_server,
            chipstack_eda_server=self.config.chipstack_eda_server,
            bearer=self.config.bearer_authorization_token,
        )

    def add_design(
        self,
        design_name,
        design_top,
        design_dependencies,
    ):
        design_info = DesignInfo(
            outdir=os.path.join(self.outdir, design_name),
            outdir_rel=design_name,
            root_dir=self.config.root_dir,
            design_name=design_name,
            top_path=design_top,
            dependencies_path=(design_dependencies),
        )
        generate_unit_test = GenerateUnitTest(
            design_name=design_name,
            config=self.config,
            design_info=design_info,
            client_v2=self.client_v2,
            unit_test_flow=self.unit_test_flow,
        )
        self.designs.append(copy.deepcopy(generate_unit_test))

    def log_info(self, message):
        logging.info(
            f"[INFO {get_current_time()}] {message} {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}"
        )

    def log_error(self, message):
        logging.error(
            f"[ERROR {get_current_time()}] {message} {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}"
        )

    def retry_on_exception(self, func, design, max_retries, delay) -> bool:
        for _ in range(max_retries):
            try:
                logging.info(f"Trying to {func.__name__} for {design.design_name}")
                func()
                return True
            except Exception as e:
                self.log_error(
                    f"Exception occurred while {func.__name__} for {design.design_name}. {e}"
                )
                time.sleep(delay)
        else:
            self.log_error(
                f"Failed to {func.__name__} for {design.design_name} after {max_retries} retries."
            )
            return False

    def generate_unit_tests_and_run(self):
        for idx, design in enumerate(self.designs):
            self.log_info(f"Generating unit tests for {design.design_name}")

            stages = [
                design.init_outdir,
                design.copy_design_files_to_outdir,
                design.read_design_files,
                design.parse_design,
                design.compile_check_dut,
                design.generate_mental_model,
                design.generate_unit_test_scenarios,
                design.generate_unit_tests,
                design.decompose_unit_tests,
                design.fix_syntax_issues,
                design.Write_fix_syntax_report,
                design.dump_per_test_all_results,
                design.write_results_to_disk,
                design.add_links_to_scenarios_report,
                design.add_links_to_syntax_report,
                design.run_unit_tests,
                design.copy_run_results_to_outdir,
                design.prepare_kpi_results,
                design.analyze_issues,
            ]

            # gen_unit_tests.prepare_results_for_db()
            # gen_unit_tests.write_results_to_db()
            # gen_unit_tests.write_kpi_plots()
            print(
                f"[INFO {get_current_time()}] Start processing {idx+1}/{len(self.designs)} design."
            )
            for stage in stages:
                print(
                    f"[INFO {get_current_time()}] Running {stage.__name__} for {design.design_name}"
                )
                res = self.retry_on_exception(stage, design, max_retries=3, delay=5)
                if not res:
                    self.log_error(
                        f"Failed to generate unit tests for {design.design_name}, because of the number of exceptions."
                    )
                    break
            print(
                f"[INFO {get_current_time()}] Completed processing {idx+1}/{len(self.designs)} design."
            )

    def write_results_to_db(self):
        for design in self.designs:
            str_msg = f"[INFO {get_current_time()}] Writing results to db for {design.design_name}."
            print(str_msg, flush=True)
            self.my_sql.insert_data(
                design.results_for_db.model_dump(), unit_test_flow=self.unit_test_flow
            )

    def create_top_html_report(self):
        """
        Create the HTML report.
        """
        self.top_html_report.set_end_time(datetime.now())
        html_report = self.top_html_report.get_top_html_report(
            self.designs,
            unit_test_flow=self.unit_test_flow,
            nr_of_syntax_fix_attempts=self.config.nr_of_syntax_fix_attempts,
            outdir=self.outdir,
        )
        write_str_to_file(os.path.join(self.outdir, "report.html"), html_report)
        str_msg = f"[INFO {get_current_time()}] HTML report: {self.outdir}/report.html"
        print(str_msg, flush=True)
        return ""

    def write_kpi_plots(self):
        for design in self.designs:
            design.write_kpi_plots(
                self.my_sql.read_data(design_name=design.design_name)
            )

    def create_kpi_table(self):
        rows_content = ""
        for design in self.designs:
            rows_content += f"""<tr>
                <td>{design.design_name}</td>
                <td>{design.results_for_db.get("scenarios_generated", 0)}</td>
                <td>{design.results_for_db.get("initial_tests_with_syntax_issues", 0)}</td>
                <td>{design.results_for_db.get("final_tests_no_syntax_issues", 0)}</td>
                <td>{design.results_for_db.get("passed_test_cases", 0)}</td>
                <td>{design.results_for_db.get("overall_coverage", 0)}</td>
            </tr>
            """

        html_report = f"""<!DOCTYPE html>
    <html>
    <head>
        <style>
            table {{
                font-family: Arial, sans-serif;
                border-collapse: collapse;
            }}
        </style>
    </head>
    <body>
        <table border='1' border-collapse: collapse;'>
            <tr>
                <th>Design</th>
                <th>Scenarios<br/>Generated</th>
                <th>Initial<br/>Tests<br/>With<br/>Syntax<br/>Issues</th>
                <th>Final<br/>Tests<br/>No<br/>Syntax Issues</th>
                <th>Passed<br/>Test<br/>Cases</th>
                <th>Overall<br/>Coverage<br/>(Block Average)</th>
            </tr>
{rows_content}
        </table>
    </body>
    </html>
    """
        write_str_to_file(os.path.join(self.outdir, "kpi_report.html"), html_report)
