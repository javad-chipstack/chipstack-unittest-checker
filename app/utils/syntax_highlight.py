import json
import html
from pygments import highlight
from typing import List, Dict, Tuple
from pygments.formatters import HtmlFormatter
from pygments.lexers import VerilogLexer
from pygments.lexers import JsonLexer


def convert_json_to_html(json_code: str) -> str:
    highlighted_code = highlight(json_code, JsonLexer(), HtmlFormatter())
    highlighted_code = highlighted_code.rstrip()

    res_html_file = """
<html>
<head>
    <title></title>
    <style>
        .nt {
            font-weight: bold; 
            color: #FF5733; 
        }
        .s2 {
            font-style: bold; 
            color: #4CAF50; 
        }
        .hilight {
            background-color: #FFFF00; 
            color: #000000; 
        }
        .w {
            font-weight: bold; 
            color: blue; 
        }
        .p {
            font-style: bold; 
            color: green; 
        }
    </style>
</head>
<body>
"""
    lines = highlighted_code.split("\n")
    for idx, line in enumerate(lines):
        lines[idx] = line.replace(
            "<span class",
            f"<span style='color: gray; display: inline-block; width: 35px; user-select: none;'>{idx+1}</span><span class",
            1,
        )
    highlighted_code = "\n".join(lines)

    res_html_file += f"""{highlighted_code}
</body>
</html>
"""
    return res_html_file


def convert_verilog_to_html(
    verilog_code: str, issues: List[str] = [], scenario: Dict = {}
) -> str:
    highlighted_code = highlight(verilog_code, VerilogLexer(), HtmlFormatter())
    highlighted_code = highlighted_code.rstrip()

    res_html_file = """
<html>
<head>
    <title></title>
    <style>
        span.k {/* Keyword */
            color: #0077aa; /* Blue */
            font-weight: bold;
        }
        span.mb {/* Number */
            color: #992e00; /* Green */
        }
        span.mh {/* Number */
            color: #992e00; /* Green */
        }
        span.mb {/* Number */
            color: #992e00; /* Green */
        }

        span.s {/* String */
            color: #dd1144; /* Red */
        }

        span.na {/* Name */
            color: #333333; /* Black */
        }

        span.nc {/* Name.Class */
            color: #445588; /* Dark blue */
        }

        span.no {/* Name.Constant */
            color: #336699; /* Medium blue */
        }

        span.np {/* Name.Property */
            color: #009999; /* Dark cyan */
        }

        span.nb {/* Name.Builtin */
            color: #999999; /* Gray */
        }

        span.nn { /* Name.Namespace */
            color: #555555; /* Dark gray */
        }

        /* Name.Tag */
        span.nt {
            color: #660066; /* Purple */
        }

        span.nd {/* Name.Decorator */
            color: #aa22ff; /* Light purple */
        }

        span.p {/* Punctuation */
            color: #000000; /* Black */
        }

        span.w {/* Whitespace */
            color: inherit;
        }

        span.c1 {/* Comment */
            color: #800000; /* Dark gray */
            font-style: italic;
        }

        span.t { /* Text */
            color: inherit;
        }
    </style>
</head>
<body>
"""

    if scenario:
        res_html_file += f"""<div style='font-weight: bold;;'>Scenario:</div>
<div style='color: blue; margin-left:20px;'><pre style='white-space: pre-wrap;'>{json.dumps(scenario, indent=4, sort_keys=True)}</pre></div>
"""

    lines = highlighted_code.split("\n")
    for idx, line in enumerate(lines):
        lines[idx] = line.replace(
            "<span class",
            f"<span style='color: gray; display: inline-block; width: 35px; user-select: none;'>{idx+1}</span><span class",
            1,
        )
    res_html_file += "\n".join(lines)

    if issues:
        res_html_file += f"""<div style='font-weight: bold;;'>Issues:</div>
<div style='color: red; margin-left:20px;'>{'<br/>'.join(issues)}</div>
<br/>
"""

    res_html_file += f"""
</body>
</html>
"""
    return res_html_file


def create_syntax_correction_report(logs: List[Tuple[str, str]]) -> str:

    html_sections = []
    for log in logs:
        if log[0] == "sv":
            highlighted_code = highlight(log[1], VerilogLexer(), HtmlFormatter())

            lines = highlighted_code.split("\n")
            for idx, line in enumerate(lines):
                lines[idx] = line.replace(
                    "<span class",
                    f"<span style='color: gray; display: inline-block; width: 35px; user-select: none;'>{idx+1}</span><span class",
                    1,
                )
            html_sections.append("\n".join(lines))

        elif log[0] == "json":
            html_sections.append(
                f"""<div style='font-weight: bold;;'>Scenario:</div>"""
                + f"""<div style='color: blue; margin-left:20px;'>"""
                + f"""<pre style='white-space: pre-wrap;'>{json.dumps(log[1], indent=4, sort_keys=True)}</pre>"""
                + f"""</div>"""
            )
        elif log[0] == "issues":
            issues = (
                f"""<div style='color: red; margin-left:20px;'>"""
                + f"""{'<br/>'.join(log[1])}</div>"""
                if log[1]
                else "<div style='color: green; margin-left:20px;'>none</div>"
            )
            html_sections.append(
                f"""<div style='font-weight: bold;;'>Issues:</div>"""
                + issues
                + f"""<br/>"""
            )
        elif log[0] == "title-text":
            html_sections.append(
                f"""
<div class="log-container">
    <span class="log-title">{html.escape(log[1]["title"])}:</span>
    <pre class="log-text"><code>{html.escape(log[1]["text"])}</code></pre>
</div>
"""
            )
        else:
            html_sections.append(log[1])

    res_html_file = """
<html>
<head>
    <title></title>
    <style>
        span.k {/* Keyword */
            color: #0077aa; /* Blue */
            font-weight: bold;
        }
        
        span.n {/* Number */
            color: #009900; /* Green */
        }
        span.mb {/* Number */
            color: #992e00; /* Green */
        }
        span.mh {/* Number */
            color: #992e00; /* Green */
        }
        span.s {/* String */
            color: #dd1144; /* Red */
        }

        span.na {/* Name */
            color: #333333; /* Black */
        }

        span.nc {/* Name.Class */
            color: #445588; /* Dark blue */
        }

        span.no {/* Name.Constant */
            color: #336699; /* Medium blue */
        }

        span.np {/* Name.Property */
            color: #009999; /* Dark cyan */
        }

        span.nb {/* Name.Builtin */
            color: #999999; /* Gray */
        }

        span.nn { /* Name.Namespace */
            color: #555555; /* Dark gray */
        }

        /* Name.Tag */
        span.nt {
            color: #660066; /* Purple */
        }

        span.nd {/* Name.Decorator */
            color: #aa22ff; /* Light purple */
        }

        span.p {/* Punctuation */
            color: #000000; /* Black */
        }

        span.w {/* Whitespace */
            color: inherit;
        }
        span.c1 {/* Comment */
            color: #888888; /* Dark gray */
            font-style: italic;
        }
        span.t { /* Text */
            color: inherit;
        }
        .log-container {
            background-color: #f9f9f9; /* Subtle background color */
            border: 1px solid #ddd;    /* Light gray border */
            border-radius: 8px;        /* Rounded corners */
            padding: 15px;             /* Spacing inside the container */
            margin: 10px 0;            /* Margin around the container */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Light shadow for depth */
            max-width: 1600px;         /* Limit the width of the container */
            font-family: Arial, sans-serif; /* Consistent font */
        }
        .log-title {
            font-weight: bold;
            font-size: 1.2em;          /* Slightly larger title text */
            color: #333;               /* Darker color for better readability */
        }
        .log-text {
            margin-left: 20px;
            color: #666;               /* Slightly lighter text color */
            white-space: pre-wrap;     /* Preserve whitespace and line breaks */
        }
    </style>
</head>
<body>
"""

    res_html_file += "<br/>\n".join(html_sections)
    res_html_file += f"""
</body>
</html>
"""
    return res_html_file
