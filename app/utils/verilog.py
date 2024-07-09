import re


def extract_module_names_from_verilog_code(verilog_code):

    # Regular expression to match Verilog module declarations
    module_pattern = re.compile(r"\bmodule\s+(\w+)\b")
    module_names = module_pattern.findall(verilog_code)

    return module_names[0] if module_names and len(module_names) > 0 else ""
