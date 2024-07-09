import os
from typing import List
from app.flows.progress_designs import RegressDesigns
from app.utils.time import get_current_time


def main():
    # Read the configuration file, parse it, and perform safety checks
    regression_control_cfg = os.environ.get("REGRESSION_CONTROL_CFG")
    if not regression_control_cfg:
        print(
            "[ERROR {get_current_time()}] REGRESSION_CONTROL_CFG environment variable is not set.",
            flush=True,
        )
        exit(1)

    gen_unit_tests = RegressDesigns()
    gen_unit_tests.init_db()
    gen_unit_tests.init_config()
    cfg_parse_errs = gen_unit_tests.parse_config(regression_control_cfg)
    if check_errors(cfg_parse_errs):
        exit(1)
    gen_unit_tests.init_client()
    gen_unit_tests.init_testbench()

    for design in gen_unit_tests.config.designs:
        design_name = design["name"]
        design_top = design["top"]
        design_dependencies = design["dependencies"]
        print(
            f"[INFO {get_current_time()}] Processing design files for: {design_name} ",
            flush=True,
        )
        gen_unit_tests.add_design(
            design_name=design_name,
            design_top=design_top,
            design_dependencies=design_dependencies,
        )

    gen_unit_tests.generate_unit_tests_and_run()
    gen_unit_tests.create_kpi_table()
    gen_unit_tests.create_top_html_report()


def check_errors(errors: List[str]):
    if errors:
        for error in errors:
            print(f"[ERROR {get_current_time()}] {error}", flush=True)
        return True
    return False


if __name__ == "__main__":
    main()
    print(f"[INFO {get_current_time()}] Done.", flush=True)
