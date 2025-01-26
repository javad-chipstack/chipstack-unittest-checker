import re
import json
from pygments import highlight
from pygments.lexers import PythonLexer
from pygments.formatters import TerminalFormatter

from pygments import highlight
from pygments.lexers import PythonLexer
from pygments.formatters import HtmlFormatter


file_path = "kpi/out/dev_v3/output_20241016_151511/Simulation/cdc_fifo/metadata.json"
with open(file_path, "r") as file:
    data = json.load(file)

for test in data.get("logs", []):
    task_names = []
    print("=" * 80)
    for item in test:
        print("-" * 80)
        print(item["system_prompt"])
        print(item["user_prompt"])
        highlighted_code = highlight(
            item["response"], PythonLexer(), TerminalFormatter()
        )
        highlighted_code = highlight(item["response"], PythonLexer(), HtmlFormatter())

        pattern = r"task\s+automatic\s+(\w+)\b"
        matches = re.findall(pattern, item["response"])

        # Extracting task names
        task_name = matches[0] if matches else ""

        print(highlighted_code)
        if task_name:
            task_names.append(task_name)

    print("Task Names: ", task_names)
