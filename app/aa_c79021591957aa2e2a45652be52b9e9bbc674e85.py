import os
import re
import json
import html
from pygments import highlight
from pygments.formatters import HtmlFormatter
from pygments.lexers import VerilogLexer
from pygments.lexers import JsonLexer

output_dir = "kpi/out/dev_v3/output_20241016_151511/Simulation/"


def main():
    # Step 1: Get subdirectories
    dirs = get_subdirectories(output_dir)

    html_report = """
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body { font-family: Arial, sans-serif; }
            h1 { color: #333; }
            table {
                width: 100%;
                border-collapse: collapse; /* Collapses the borders */
                margin-top: 20px;
            }
            th, td {
                border: 1px solid #ddd; /* Adds border to cells */
                padding: 8px; /* Adds padding inside cells */
                text-align: left; /* Aligns text to the left */
            }
            th {
                background-color: #f2f2f2; /* Light gray background for header */
                color: #333; /* Header text color */
            }
            tr:hover {
                background-color: #f5f5f5; /* Changes background color on hover */
            }
        </style>
        <title>Simulation Test Reports</title>
    </head>
    <body>
        <h1>Simulation Test Reports</h1>
        <table border=1px style=''>
            <tr>
                <th>Test</th>
                <th>Report</th>
            </tr>
    """

    # Step 2: Process each test directory
    for test_dir in dirs:
        print(f"Processing {test_dir}")
        process_test_directory(test_dir)

        html_links = []
        for rpt in (
            "parsed_design.json.html",
            "mental_model.json.html",
            "metadata.json.html",
            "scenarios.json.html",
            "svas.json.html",
            "syntax_correction.json.html",
            "testbench_before_syntax_fix.sv.html",
            "testbench_after_syntax_fix.sv.html",
            "run_results.json.html",
        ):
            if os.path.exists(os.path.join(test_dir, rpt)):
                html_links.append(
                    f"<a href='{os.path.basename(test_dir)}/{rpt}'>{rpt}</a>"
                )
            else:
                html_links.append(rpt)

        html_links_str = (
            html_links[0]
            + ", "
            + html_links[1]
            + "<br/>"
            + html_links[2]
            + ", "
            + html_links[3]
            + ", "
            + html_links[4]
            + "<br/>"
            + html_links[5]
            + "<br/>"
            + html_links[6]
            + ", "
            + html_links[7]
            + "<br/>"
            + html_links[8]
        )

        html_report += f"""
            <tr>
                <td>{os.path.basename(test_dir)}</td>
                <td>{html_links_str}</td>
            </tr>
        """
    html_report += """
        </table>
    </body>
    </html>
    """

    # Step 3: Write the main HTML report
    with open(os.path.join(output_dir, "index.html"), "w") as file:
        file.write(html_report)
        print(f"Main HTML report generated at {output_dir}/index.html")


def get_subdirectories(directory):
    """Returns a list of subdirectories within a given directory."""
    return [
        os.path.join(directory, d)
        for d in os.listdir(directory)
        if os.path.isdir(os.path.join(directory, d))
    ]


def process_test_directory(test_dir):
    """Processes each test directory: converts JSON to HTML and handles metadata/syntax correction."""
    # Step 1: Convert JSON files to HTML
    json_files = get_json_files(test_dir)
    for json_file in json_files:
        print(f"Converting {json_file} to HTML")
        json_to_html(json_file, test_dir)

    sv_files = get_sv_files(test_dir)
    for sv_file in sv_files:
        print(f"Converting {sv_file} to HTML")
        sv_to_html(sv_file, test_dir)

    # Step 2: Convert metadata to HTML if exists
    metadata_file_path = os.path.join(test_dir, "metadata.json")
    if os.path.exists(metadata_file_path):
        convert_metadata_to_html(metadata_file_path, test_dir)

    # Step 3: Process syntax correction if exists
    syntax_correction_file_path = os.path.join(test_dir, "syntax_correction.json.html")
    if os.path.exists(syntax_correction_file_path):
        process_syntax_correction(syntax_correction_file_path)


def get_json_files(test_dir):
    """Returns a list of all JSON files in a given directory."""
    return [
        os.path.join(test_dir, f) for f in os.listdir(test_dir) if f.endswith(".json")
    ]


def get_sv_files(test_dir):
    """Returns a list of all SV files in a given directory."""
    return [
        os.path.join(test_dir, f) for f in os.listdir(test_dir) if f.endswith(".sv")
    ]


def process_syntax_correction(file_path):
    """Processes syntax correction by converting module names to hyperlinks in the given file."""
    with open(file_path, "r") as file:
        content = file.read()

    # Replace "module \w+" with hyperlinks
    content = re.sub(
        r"module\s+(\w+)",
        r'<a href="tests/\1/report.html">\g<0></a>',
        content,
    )

    # Write the updated content back to the file
    with open(file_path, "w") as file:
        file.write(content)


def json_to_html(json_file_path: str, output_dir: str) -> None:
    """
    Convert a JSON file to a styled HTML file.

    :param json_file_path: Path to the JSON file.
    :param output_dir: Directory where the HTML file will be stored.
    """
    with open(json_file_path, "r") as file:
        json_data = json.load(file)

    # Ensure output directory exists
    os.makedirs(output_dir, exist_ok=True)

    # Generate HTML content
    html_report = generate_json_html_report(json_data, json_file_path)

    # get the filename of json_file_path
    json_file_name = os.path.basename(json_file_path)

    # Write the HTML report to a file
    output_file_path = os.path.join(output_dir, f"{json_file_name}.html")
    with open(output_file_path, "w") as file:
        file.write(html_report)
        print(f"HTML report generated at {output_file_path}")


def generate_json_html_report(json_data, json_file_path):
    """
    Generate HTML content for the JSON data with syntax highlighting.

    :param json_data: JSON object (can be dict, list, etc.)
    :param json_file_path: The path of the JSON file (for the title).
    :return: HTML string representing the JSON data.
    """
    json_str = json.dumps(json_data, indent=4)
    escaped_json_str = html.escape(json_str, quote=False)
    highlighted_json = highlight(escaped_json_str, JsonLexer(), HtmlFormatter())

    html_report = f"""
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {{ font-family: Arial, sans-serif; background-color: #f4f4f4; padding: 20px; color: #333; }}
            .frame {{ border: 2px solid #333; border-radius: 10px; background-color: #e6e6e6; padding: 15px; box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2); }}
            pre {{ white-space: pre; margin: 0; color: #2c3e50; font-size: 16px; }}

            .nt {{
                font-weight: bold; 
                color: #FF5733; 
            }}
            .s2 {{
                font-style: bold; 
                color: #4CAF50; 
            }}
            .hilight {{
                background-color: #FFFF00; 
                color: #000000; 
            }}
            .w {{
                font-weight: bold; 
                color: blue; 
            }}
            .p {{
                font-style: bold; 
                color: green; 
            }}
        </style>
        <title>JSON Report: {os.path.basename(json_file_path)}</title>
    </head>
    <body>
        <h1>JSON Report</h1>
        <h2>File: {os.path.basename(json_file_path)}</h2>
        <div class="frame">{highlighted_json}</div>
    </body>
    </html>
    """
    return html_report


def sv_to_html(sv_file_path: str, output_dir: str) -> None:
    with open(sv_file_path, "r") as file:
        sv_code = file.read()

    # Ensure output directory exists
    os.makedirs(output_dir, exist_ok=True)

    # Generate HTML content
    file_name = os.path.basename(sv_file_path)
    escaped_sv_code = html.escape(sv_code, quote=False)
    html_report = generate_sv_html_report(escaped_sv_code, title=file_name)

    # get the filename of sv_file_path
    sv_file_name = os.path.basename(sv_file_path)

    # Write the HTML report to a file
    output_file_path = os.path.join(output_dir, f"{sv_file_name}.html")
    with open(output_file_path, "w") as file:
        file.write(html_report)
        print(f"HTML report generated at {output_file_path}")


def generate_sv_html_report(sv_code: str, title: str) -> str:
    highlighted_sv_code = highlight(sv_code, VerilogLexer(), HtmlFormatter())

    html_report = f"""
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {{ font-family: Arial, sans-serif; background-color: #f4f4f4; padding: 20px; color: #333; }}
            .frame {{ border: 2px solid #333; border-radius: 10px; background-color: #e6e6e6; padding: 15px; box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2); }}
            pre {{ white-space: pre-wrap; word-wrap: break-word; margin: 0; color: #2c3e50; font-size: 16px; }}
            /* Additional styles for syntax highlighting */
            span.k {{ color: #0077aa; font-weight: bold; }} span.n {{ color: #009900; }} span.s {{ color: #dd1144; }}
            span.na {{ color: #333; }} span.nc {{ color: #445588; }} span.no {{ color: #336699; }}
            span.np {{ color: #009999; }} span.nb {{ color: #999999; }} span.nn {{ color: #555555; }}
            span.nt {{ color: #660066; }} span.nd {{ color: #aa22ff; }} span.p {{ color: #000; }} span.c {{ color: #888; font-style: italic; }}
        </style>
        <title>{title}</title>
    </head>
    <body>
        <h1>{title}</h1>
        <div class="frame">{highlighted_sv_code}</div>
    </body>
    </html>
    """
    return html_report


def convert_metadata_to_html(metadata_file_path: str, test_dir: str) -> None:
    with open(metadata_file_path, "r") as file:
        data = json.load(file)

    # Create directory for the output
    output_dir = os.path.join(test_dir, "tests")
    os.makedirs(output_dir, exist_ok=True)

    for test in data.get("logs", []):
        task_names = [
            match
            for item in test
            for match in re.findall(r"task\s+automatic\s+(\w+)\b", item["response"])
        ]

        test_output_dir = os.path.join(output_dir, "_".join(task_names))
        os.makedirs(test_output_dir, exist_ok=True)

        # Generate HTML report content
        html_report = generate_html_report(test, task_names)

        # Write HTML report to a file
        with open(os.path.join(test_output_dir, "report.html"), "w") as file:
            file.write(html_report)
            print(f"Report for {'_'.join(task_names)} is generated.")


def generate_html_report(test, task_names):
    html_report = f"""
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {{ font-family: Arial, sans-serif; background-color: #f4f4f4; padding: 20px; color: #333; }}
            .frame {{ border: 2px solid #333; border-radius: 10px; background-color: #e6e6e6; padding: 15px; box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2); }}
            pre {{ white-space: pre-wrap; word-wrap: break-word; margin: 0; color: #2c3e50; font-size: 16px; }}
            /* Additional styles for syntax highlighting */
            span.k {{ color: #0077aa; font-weight: bold; }} span.n {{ color: #009900; }} span.s {{ color: #dd1144; }}
            span.na {{ color: #333; }} span.nc {{ color: #445588; }} span.no {{ color: #336699; }}
            span.np {{ color: #009999; }} span.nb {{ color: #999999; }} span.nn {{ color: #555555; }}
            span.nt {{ color: #660066; }} span.nd {{ color: #aa22ff; }} span.p {{ color: #000; }} span.c {{ color: #888; font-style: italic; }}
        </style>
        <title>{''.join(task_names)}</title>
    </head>
    <body>
    """

    # Initialize the report with a top anchor
    html_report += """
    <a name="top"></a>  <!-- Anchor at the top of the page -->
    """

    # First pass: Generate the list of step anchors for navigation
    step_anchors_lst = ["""<a href="#top">top</a>"""]
    for sim_step_idx, _ in enumerate(test):
        step_anchors_lst.append(
            f"""<a href="#system_prompt_{sim_step_idx + 1}">system prompt {sim_step_idx + 1}</a>"""
        )
        step_anchors_lst.append(
            f"""<a href="#user_prompt_{sim_step_idx + 1}">user prompt {sim_step_idx + 1}</a>"""
        )
        step_anchors_lst.append(
            f"""<a href="#response_{sim_step_idx + 1}">response {sim_step_idx + 1}</a>"""
        )
    step_anchors = " | ".join(step_anchors_lst)

    # Second pass: Add content for each step with links to the prompt/response sections
    for sim_step_idx, item in enumerate(test):
        escaped_system_prompt_str = html.escape(item["system_prompt"], quote=False)
        escaped_user_prompt_str = html.escape(item["user_prompt"], quote=False)
        escaped_response_str = html.escape(item["response"], quote=False)
        highlighted_code = highlight(
            escaped_response_str, VerilogLexer(), HtmlFormatter()
        )

        # Add links for system prompt, user prompt, and response
        html_report += f"""
        <a name="step{sim_step_idx + 1}"></a>
        <h2>Step {sim_step_idx + 1}</h2>
        <a name="system_prompt_{sim_step_idx + 1}"></a>
        <h3>System Prompt <span style="font-weight: normal;">&nbsp; ({step_anchors})</span></h3> 
        <div class="frame"><pre>{escaped_system_prompt_str}</pre></div>

        <!-- User Prompt with anchor -->
        <a name="user_prompt_{sim_step_idx + 1}"></a>
        <h3>User Prompt <span style="font-weight: normal;">&nbsp;({step_anchors})</span></h3>
        <div class="frame"><pre>{escaped_user_prompt_str}</pre></div>

        <!-- Response with anchor -->
        <a name="response_{sim_step_idx + 1}"></a>
        <h3>Response <span style="font-weight: normal;">&nbsp;({step_anchors})</span></h3>
        <div class="frame">{highlighted_code}</div>
        """

    html_report += "</body></html>"
    return html_report


if __name__ == "__main__":
    main()
