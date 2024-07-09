import re
import sys
from typing import List
import glob
import json
from html import escape


def extract_error_info(error_line):
    # Regular expression to match the error pattern and extract relevant parts
    pattern = r"\[ERROR\] [\w:]+ \*([^(]+)\s*\([^,]+,(\d+)\|\d+\):\s*(.*)"

    match = re.search(pattern, error_line)
    if match:
        error_code = match.group(1)
        line_number = int(match.group(2))
        message = match.group(3).strip()
        return (error_code, line_number, message)
    else:
        # If the pattern doesn't match, return the original line as the message
        return ("", 0, error_line.strip())


def analyze_issues():
    # read all the json files outdir/*/syntax_correction.json
    file_paths = glob.glob("outdir/*/syntax_correction.json")
    for file_path in file_paths:
        print(f"[INFO] Analyzing issues in {file_path}")
        with open(file_path, "r") as f:
            data = f.read()
            # read all codeblocks -> correction_history -> syntax_issues -> errors
            json_data = json.loads(data)
            codeblocks = json_data["codeblocks"]
            print(f"Design Name: {file_name}")
            print(f"Test Name: {test_name}")
            for codeblock in codeblocks:
                # Extract test name from code block
                test_name = re.search(
                    r"module\s+(\w+)", codeblock.get("orig_code", "No test name found")
                ).group(1)

                all_correction_history = codeblock["correction_history"]
                for attempt, correction_history in enumerate(all_correction_history):
                    syntax_issues = correction_history["syntax_issues"]
                    errors = syntax_issues["errors"]
                    # process the errors as needed
                    if errors:
                        if attempt == 0:
                            print(
                                "****************************************************************************************************"
                            )
                            file_name = file_path.split("/")[-2]
                            print(f"Test Name: {test_name}")
                        print(
                            f"    ********************* Attempt: {attempt} *****************************"
                        )
                        for err_nr, error in enumerate(errors):
                            error_code, line_number, message = extract_error_info(error)
                            if line_number != -1:
                                if err_nr != 0:
                                    print(
                                        f"    ---------------------------------------------------------"
                                    )

                                print(f"    Line: {line_number}")
                                print(f"    Error code: {error_code}")
                                print(f"    Error message: {message}")

                                input_code = correction_history["input_code"]
                                input_code_lines = input_code.split("\n")
                                str_error_lines = "\n".join(
                                    input_code_lines[line_number - 1 : line_number + 2]
                                )
                                print(
                                    indent_multiline_string(
                                        unindent_multiline_string(str_error_lines)
                                    )
                                )

            # print(data)


def analyze_issues_to_html():
    # Read all the json files outdir/*/syntax_correction.json
    file_paths = glob.glob("outdir/*/syntax_correction.json")
    html_output = [
        "<html>",
        "<head>",
        "<style>",
        "body { font-family: Arial, sans-serif; }",
        "h2 { color: #2e6c80; }",
        "h3 { color: #3c8d8f; }",
        "h4 { color: #4a90a4; }",
        "pre { background-color: #f4f4f4; padding: 10px; border-radius: 5px; }",
        "hr { border: 0; height: 1px; background: #ddd; margin: 20px 0; }",
        "</style>",
        "</head>",
        "<body>",
    ]

    for file_path in file_paths:
        print(f"[INFO] Analyzing issues in {file_path}")
        with open(file_path, "r") as f:
            data = f.read()
            # Read all codeblocks -> correction_history -> syntax_issues -> errors
            json_data = json.loads(data)
            codeblocks = json_data["codeblocks"]
            file_name = file_path.split("/")[-2]
            html_output.append(f"<h2>Design Name: {escape(file_name)}</h2>")
            for codeblock in codeblocks:
                # Extract test name from code block
                test_name_match = re.search(
                    r"module\s+(\w+)", codeblock.get("orig_code", "No test name found")
                )
                test_name = (
                    test_name_match.group(1)
                    if test_name_match
                    else "No test name found"
                )

                all_correction_history = codeblock["correction_history"]
                for attempt, correction_history in enumerate(all_correction_history):
                    syntax_issues = correction_history["syntax_issues"]
                    errors = syntax_issues["errors"]
                    # Process the errors as needed
                    if errors:
                        if attempt == 0:
                            html_output.append(
                                f"<h3>Test Name: {escape(test_name)}</h3>"
                            )
                        html_output.append(f"<h4>Attempt: {attempt}</h4>")
                        for err_nr, error in enumerate(errors):
                            error_code, line_number, message = extract_error_info(error)
                            if line_number != -1:
                                if err_nr != 0:
                                    html_output.append("<hr>")

                                html_output.append(
                                    f"<p><strong>Line:</strong> {line_number}</p>"
                                )
                                html_output.append(
                                    f"<p><strong>Error code:</strong> {escape(error_code)}</p>"
                                )
                                html_output.append(
                                    f"<p><strong>Error message:</strong> {escape(message)}</p>"
                                )

                                input_code = correction_history["input_code"]
                                input_code_lines = input_code.split("\n")
                                str_error_lines = "\n".join(
                                    input_code_lines[line_number - 1 : line_number + 2]
                                )
                                html_output.append(
                                    f"<pre>{escape(indent_multiline_string(unindent_multiline_string(str_error_lines)))}</pre>"
                                )

    # Combine HTML parts and return or save to file
    html_output.append("</body></html>")
    full_html_output = "\n".join(html_output)
    with open("output.html", "w") as f:
        f.write(full_html_output)


def extract_error_info(error_line):
    # Regular expression to match the error pattern and extract relevant parts
    pattern = r"(\w+): \*([^(]+)\s*\([^,]+,(\d+)\|\d+\):\s*(.*)"

    match = re.search(pattern, error_line)
    if match:
        error_code = match.group(2)
        line_number = int(match.group(3))
        message = match.group(4).strip()
        return (error_code, line_number, message)
    else:
        # If the pattern doesn't match, return the original line as the message
        return ("", -1, error_line.strip())


def indent_multiline_string(
    text: str, number_of_spaces=4, exclude_first_line=False
) -> str:
    """Indent all lines of a multiline string by the specified number of spaces."""
    lines = text.split("\n")
    for idx, line in enumerate(lines):
        if idx == 0 and exclude_first_line:
            continue
        lines[idx] = (number_of_spaces * " ") + line
    return "\n".join(lines)


def unindent_multiline_string(text) -> str:
    """
    Removes the common indentation from a multiline string.
    """
    lines = text.split("\n")
    # Remove empty lines
    lines = [line for line in lines if line.strip()]
    # Find the minimum indentation
    min_indent = sys.maxsize
    for line in lines:
        stripped = line.lstrip()
        indent = len(line) - len(stripped)
        min_indent = min(min_indent, indent)

    unindented_lines = [line[min_indent:] for line in lines]
    unindented_text = "\n".join(unindented_lines)

    return unindented_text


if __name__ == "__main__":
    analyze_issues_to_html()
    print(f"[INFO] Done.", flush=True)
