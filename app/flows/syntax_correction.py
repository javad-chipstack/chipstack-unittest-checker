from typing import List, Dict, Any
from pydantic import BaseModel, ConfigDict

from app.utils.strings import text_to_html, indent_multiline_string


class SyntaxIssues(BaseModel):
    errors: List[str]
    warnings: List[str]

    def __init__(self, errors: List[str] = [], warnings: List[str] = []):
        super().__init__(errors=errors, warnings=warnings)

    def __len__(self):
        return len(self.errors) + len(self.warnings)

    def __bool__(self):
        warnings = [
            line
            for line in self.warnings
            if "xmsim: *W,RNQUIE: Simulation is complete." not in line
        ]
        errors = self.errors
        return bool(errors or warnings)

    def __str__(self):
        if self.errors:
            errors_str = indent_multiline_string("\n".join(self.errors))
        else:
            errors_str = indent_multiline_string("None")

        if self.warnings:
            warnings_str = indent_multiline_string("\n".join(self.warnings))
        else:
            warnings_str = indent_multiline_string("None")

        result = f"""Errors: \n{
                errors_str
            }\nWarnings: \n{
                warnings_str
            }"""
        return result


class CorrectionReqContext(BaseModel):

    input_code: str
    output_code: str
    syntax_issues: SyntaxIssues
    syntax_issues_checked: bool

    def __init__(
        self,
        input_code: str,
        output_code: str,
        syntax_issues: SyntaxIssues = SyntaxIssues(),
        syntax_issues_checked: bool = False,
    ):
        super().__init__(
            input_code=input_code,
            output_code=output_code,
            syntax_issues=syntax_issues,
            syntax_issues_checked=syntax_issues_checked,
        )

    def has_syntax_issue(self):
        return bool(self.syntax_issues)

    def __str__(self):
        return f"""Input: {
                self.input_code
            }\nOutput: {
                self.output_code
            }\nSyntax Issues: {
                self.syntax_issues
            }"""


class SyntaxCorrectionDetails(BaseModel):

    orig_code: str
    final_code: str
    correction_history: List[CorrectionReqContext]

    model_config = ConfigDict(arbitrary_types_allowed=True)

    def __init__(
        self,
        orig_code: str,
        correction_history: list[CorrectionReqContext],
        final_code: str = "",
    ):
        super().__init__(
            orig_code=orig_code,
            correction_history=correction_history,
            final_code=final_code,
        )

    def __str__(self):
        return f"""Original Code: {
                self.orig_code
            }\nFinal Code: {
                self.final_code
            }\nCorrection History: {
                self.correction_history
            }"""


class SyntaxCorrection(BaseModel):
    codeblocks: List[SyntaxCorrectionDetails]

    def __init__(self):
        super().__init__(codeblocks=[])

    def to_html(self):
        result = """<html>
            <head>
                <title>Syntax Correction</title>
                <style>
                td, th {
                    border: 1px solid black;
                }
                table {
                    width: 100%;
                    border-collapse: collapse;
                }
                .scrollable-content {
                    max-height: 300px;
                    max-width: 400px;
                    overflow: auto;
                }
                </style>
            </head>
            <body>
            """

        for idx, codeblock in enumerate(self.codeblocks):
            result += f"""<p style="margin-bottom: 0;"><strong>Syntax Correction for module/task/function: {idx+1}</strong></p>\n"""
            result += """<table border=1>"""
            result += """<colgroup><col style="width: 25%;"><col style="width: 25%;"><col style="width: 25%;"><col style="width: 25%;"></colgroup>"""
            result += """<tr><th>Attempt</th><th>Input</th><th>Output</th><th>Syntax Issues</th></tr>"""
            result += """<tr>"""
            result += """<td></td>"""
            result += f"""<td><div class="scrollable-content">{text_to_html(codeblock.orig_code)}</div></td>"""
            result += f"""<td><div class="scrollable-content">{text_to_html(codeblock.final_code)}</div></td>"""
            result += (
                f"""<td><div class="scrollable-content">{text_to_html("")}</div></td>"""
            )
            result += """</tr>"""
            for attempt, correction in enumerate(codeblock.correction_history):

                result += """<tr>"""
                result += f"""<td>{attempt}</td>"""
                result += f"""<td><div class="scrollable-content">{text_to_html(correction.input_code)}</div></td>"""
                result += f"""<td><div class="scrollable-content">{text_to_html(correction.output_code)}</div></td>"""
                result += f"""<td><div class="scrollable-content">{text_to_html(str(correction.syntax_issues))}</div></td>"""
                result += """</tr>"""
            result += """</table>\n"""

        result += """</body>\n</html>"""
        return result
