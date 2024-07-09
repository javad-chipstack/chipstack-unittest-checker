import html


def text_to_html(text):
    sanitized_text = html.escape(text)
    html_output = (
        sanitized_text.replace("\n", "<br>")
        .replace(" ", "&nbsp;")
        .replace("\t", "&emsp;")
    )
    return html_output


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
