import os
from typing import List
from pydantic import BaseModel
from datetime import datetime
from app.flows.generate_unit_test import GenerateUnitTest
from app.utils.file import write_str_to_file


class TopHtmlReport(BaseModel):
    start_time: datetime = datetime.now()
    end_time: datetime = datetime.now()
    outdir: str = ""
    design_name: str = ""

    def set_start_time(self, start_time):
        self.start_time = start_time

    def set_end_time(self, end_time):
        self.end_time = end_time

    def get_top_html_report(
        self,
        designs: List[GenerateUnitTest],
        unit_test_flow: str,
        nr_of_syntax_fix_attempts: int,
        outdir: str,
    ):

        logs = ""
        if os.path.exists(os.path.join(outdir, "kpi_report.html")):
            logs = f"<a href='kpi_report.html'>kpi_report</a>"
        else:
            logs = "kpi_report (NOT REQUESTED)"

        html_rows_for_designs = self.get_html_rows_for_designs(
            designs,
            unit_test_flow=unit_test_flow,
            nr_of_syntax_fix_attempts=nr_of_syntax_fix_attempts,
            outdir=outdir,
        )
        html_report = f"""
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ChipStack regression report</title>
<style>
    /* Styling for the list */
    .list {{
        list-style-type: none;
        padding-left: 0;
    }}
    /* Styling for list items */
    .list-item-pointer {{
        cursor: pointer;
        padding: 5px 10px;
        background-color: #f7f7f7;
        border-bottom: 1px solid #ccc;
    }}        
    .list-item-no-pointer {{
        cursor: default;
        padding: 5px 10px;
        background-color: #f7f7f7;
        border-bottom: 1px solid #ccc;
    }}
    /* Styling for nested lists */
    .nested {{
        display: none;
        padding-left: 20px;
    }}
    /* Styling for active (expanded) nested lists */
    .active {{
        display: block;
    }}
    .custom-table, .custom-table th, .custom-table td {{
        border: 1px solid white;
        border-collapse: collapse;
    }}
    .custom-table th, .custom-table td {{
        background-color: #f4f9f9;
    }}
    td:last-child {{
        width: 100%;
        white-space: nowrap;
    }}
    table {{
        border: 1px solid black;
        border-collapse: collapse;
    }}
    .green {{
        color: green;  
    }}
    .red {{
        color: red;  
    }}
    .bold {{
        font-weight: bold; 
    }}
</style>
</head>
<body>
<h4 style='margin: 2px;'>{unit_test_flow} unit test generation results</h4>
<p style='margin-top: 0; font-size: 14px; color: gray;'>Started on {self.start_time.strftime("%Y-%m-%d %H:%M:%S")}</p>
logs: {logs}
<table border='1' style='width: 100%; border-collapse: collapse;'>
    <tr>
        <th>Design</th>
        <th>Duration</th>
        <th>Logs</th>
        <th>Scenarios<br/>generated</th>
        <th>Initial<br/>blocks</th>
        <th>Syntax<br/>issues<br/>remaining</th>
        <th>Scenarios<br/>remaining</th>
        <th>Result</th>
    </tr>
    {html_rows_for_designs}
</table>
<p style='margin-top: 0; font-size: 14px; color: gray;'>Ended on {self.end_time.strftime("%Y-%m-%d %H:%M:%S")}</p>

    </body>
    <script>
        // JavaScript to toggle the display of nested lists
        document.addEventListener("DOMContentLoaded", function() {{
            var listItems = document.querySelectorAll(".list-item-pointer");
            listItems.forEach(function(item) {{
            item.addEventListener("click", function() {{
                var nestedList = this.nextElementSibling;
                nestedList.classList.toggle("active");
            }});
            }});
        }});
    </script>
</html>
"""

        return html_report

    def get_formatted_html_links(self, rpts: List[str]) -> str:
        links = []
        for rpt in rpts:
            name = rpt.replace(".sv", "").replace(".json", "")
            path = os.path.join(self.outdir, f"{rpt}.html")
            if os.path.exists(path):
                links.append(
                    f"&nbsp;<a href='{self.design_name}/{rpt}.html'>{name}</a>&nbsp;"
                )
            else:
                links.append(rpt)
        return "".join(links)

    def get_html_rows_for_designs(
        self,
        designs: List[GenerateUnitTest],
        unit_test_flow: str,
        nr_of_syntax_fix_attempts: int,
        outdir: str,
    ):

        def format_list_item(description, value, css_class=""):
            return f'<li class="list-item-no-pointer">{description}: <span class="{css_class}">{value}</span></li>'

        def format_table(headers, rows):
            header_html = "".join(f"<th>{header}</th>" for header in headers)

            rows_html = ""
            for row in rows:
                row_html = ""
                for cell in row:
                    cell_str = str(cell)
                    if cell_str.lower() == "passed/proven":
                        row_html += (
                            f'<td style="background-color: green;">{cell_str}</td>'
                        )
                    elif cell_str.lower() == "failed/cex":
                        row_html += (
                            f'<td style="background-color: red;">{cell_str}</td>'
                        )
                    else:
                        row_html += f"<td>{cell_str}</td>"
                rows_html += f"\t\t\t<tr>{row_html}</tr>\n"

            return f'<table class="nested custom-table">\n\t\t\t<tr>{header_html}</tr>{rows_html}\n\t\t</table>\n'

        def format_errors_warnings(errors, warnings, design_issues=False) -> str:
            if not errors and not warnings:
                return format_list_item("Errors and warnings", "none", "green")

            if design_issues:
                error_str = (
                    f"Design errors: <span style='color: red;'>({len(errors)})</span>"
                    if errors
                    else "Design errors: <span class='green'>none</span>"
                )
            else:
                error_str = (
                    f"Errors: <span style='color: red;'>({len(errors)})</span>"
                    if errors
                    else "Errors: <span class='green'>none</span>"
                )
            warning_str = (
                f"Warnings: <span style='color: red;'>({len(warnings)})</span>"
                if warnings
                else "Warnings: <span class='green'>none</span>"
            )

            rows = [[error] for error in errors] + [[warning] for warning in warnings]
            return f'<li class="list-item-pointer">{error_str} - {warning_str}</li>{format_table(["Errors/Warnings"], rows)}'

        def format_coverage_details(details, unit_test_flow):
            if not details:
                return format_list_item("Coverage detail", "none")

            if unit_test_flow == "Formal":
                headers = [
                    "Name",
                    "Formal coverage",
                    "Stimuli coverage",
                    "Checker coverage",
                ]
                rows = [
                    [
                        item["name"],
                        item["formal_coverage"],
                        item["stimuli_coverage"],
                        item["checker_coverage"],
                    ]
                    for item in details
                ]
            else:
                headers = ["Name", "Coverage"]
                rows = [[item["name"], item["value"]] for item in details]
            return f'<li class="list-item-pointer">Coverage detail: ({len(details)})</li>{format_table(headers, rows)}'

        def format_asserts(asserts):
            if not asserts:
                return format_list_item("Asserts", "none")

            stat = {result: asserts.count(result) for result in set(asserts)}
            assert_stat_str = ", ".join(
                f"{k}: <span class='{k}'>{v}</span>" for k, v in stat.items()
            )

            headers = ["Name", "Result"]
            rows = [
                [
                    item["name"],
                    f'<span class="{item["result"]}">{item["result"]}</span>',
                ]
                for item in asserts
            ]
            return f'<li class="list-item-pointer">Assertions: {assert_stat_str}</li>{format_table(headers, rows)}'

        def format_covers(covers):
            if not covers:
                return format_list_item("Covers", "none")

            stat = {result: covers.count(result) for result in set(covers)}
            cover_stat_str = ", ".join(
                f"{k}: <span class='{k}'>{v}</span>" for k, v in stat.items()
            )

            headers = ["Name", "Result"]
            rows = [
                [
                    item["name"],
                    f'<span class="{item["result"]}">{item["result"]}</span>',
                ]
                for item in covers
            ]
            return f'<li class="list-item-pointer">Covers: {cover_stat_str}</li>{format_table(headers, rows)}'

        def format_tests(tests):
            if not tests:
                return format_list_item("Tests", "NONE", "red")

            headers = ["Test Name", "Result"]
            rows = [
                [
                    test["name"],
                    f'<span class="{("green" if test["result"].lower() in ["passed", "proven"] else "red" if test["result"].lower() in ["failed", "cex"] else "")}">{test["result"]}</span>',
                ]
                for test in tests
            ]
            return f'<li class="list-item-pointer">Tests: ({len(tests)})</li>{format_table(headers, rows)}'

        def get_syntax_correction_result(design, attempts):
            per_attempt_issues = [
                sum(
                    1
                    for codeblock in design.syntax_correction.codeblocks
                    if len(codeblock.correction_history) >= attempt
                    and codeblock.correction_history[attempt - 1].has_syntax_issue()
                )
                for attempt in range(1, attempts + 1)
            ]
            return "&nbsp;-&gt;&nbsp;".join(map(str, per_attempt_issues))

        def compile_design_results(design):
            compile_errors = design.dut_compile_check_result.get("errors", [])
            compile_warnings = design.dut_compile_check_result.get("warnings", [])
            return format_errors_warnings(
                compile_errors, compile_warnings, design_issues=True
            )

        def run_test_results(design, unit_test_flow):
            run_test_errors = design.run_test_result.get("errors", [])
            run_test_warnings = design.run_test_result.get("warnings", [])
            coverage_summary = (
                design.run_test_result.get("coverage-summary", "none") or "none"
            )
            coverage_details = design.run_test_result.get("coverage-details", [])
            asserts = design.run_test_result.get("asserts", [])
            covers = design.run_test_result.get("covers", [])
            tests = design.run_test_result.get("tests", [])
            run_id = design.run_test_result.get("run-id", "None")

            results = [
                format_list_item("Coverage summary", coverage_summary),
                format_coverage_details(coverage_details, unit_test_flow),
            ]

            if unit_test_flow == "Formal":
                results.append(format_asserts(asserts))
                results.append(format_covers(covers))

            results.append(format_errors_warnings(run_test_errors, run_test_warnings))

            if unit_test_flow == "Simulation":
                results.append(format_tests(tests))

            if run_id and os.path.exists(
                os.path.join(design.design_info.outdir, run_id)
            ):
                results.append(
                    f'<li class="list-item-pointer">Run ID: <a href="{os.path.join(design.design_info.outdir_rel, run_id)}">{run_id}</a></li>'
                )
            else:
                results.append(
                    f'<ul class="list"><li class="list-item-no-pointer">Run ID: {run_id}</li></ul>'
                )

            return results

        html_result_for_all_designs = ""

        for design in designs:
            html_rows_for_designs = f"""
                <ul class="list">
                    {compile_design_results(design)}
                    {''.join(run_test_results(design, unit_test_flow))}
                </ul>
            """

            syntax_correction_result = get_syntax_correction_result(
                design, nr_of_syntax_fix_attempts
            )

            common_columns = [
                design.design_name,
                design.get_duration_for_cur_design(),
                design.get_raw_logs_to_show(),
                len(design.scenarios) if design.scenarios else -1,
                syntax_correction_result,
                html_rows_for_designs,
            ]

            if unit_test_flow == "Simulation":
                result = f"""
                <tr>
                    <td>{common_columns[0]}</td>
                    <td style="white-space: nowrap;">{common_columns[1]}</td>
                    <td>{common_columns[2]}</td>
                    <td style="white-space: nowrap;">Unit test: {common_columns[3]}<br/>Functional coverage: </td>
                    <td style="white-space: nowrap;">Tasks: {len(design.decomposed_unit_tests.get("tasks", []))}<br/>Modules: {len(design.decomposed_unit_tests.get("modules", []))}</td>
                    <td style="white-space: nowrap;">{common_columns[4]}</td>
                    <td style="white-space: nowrap;">Tasks: {len(design.codeblocks_to_compose.get("tasks", []))}<br/>Modules: {len(design.codeblocks_to_compose.get("modules", []))}</td>
                    <td>{common_columns[5]}</td>
                </tr>"""
            else:
                result = f"""
                <tr>
                    <td>{common_columns[0]}</td>
                    <td style="white-space: nowrap;">{common_columns[1]}</td>
                    <td>{common_columns[2]}</td>
                    <td style="white-space: nowrap;">{common_columns[3]}</td>
                    <td style="white-space: nowrap;">{len(design.decomposed_unit_tests.get("codeblocks", []))}</td>
                    <td style="white-space: nowrap;">{common_columns[4]}</td>
                    <td style="white-space: nowrap;">{len(design.codeblocks_to_compose.get("codeblocks", []))}</td>
                    <td>{common_columns[5]}</td>
                </tr>"""

            html_result_for_all_designs += (
                f"\n{result}" if html_result_for_all_designs else result
            )

        return html_result_for_all_designs
