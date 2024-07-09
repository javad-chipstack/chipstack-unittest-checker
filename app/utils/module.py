import re


def get_module_name_from_codeblock(verilog_code: str) -> str:
    module_name = ""
    module_name_match = re.search(r"\bmodule\s+(\w+)", verilog_code)
    if module_name_match:
        module_name = module_name_match.group(1)
    return module_name
