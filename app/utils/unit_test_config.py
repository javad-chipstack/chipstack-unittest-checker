import os
import yaml
from pydantic import BaseModel, ConfigDict
from app.utils.time import get_current_time
from app.utils.json import print_json_without_quotes


class UnitTestConfig(BaseModel):

    chipstack_python_server: str = ""
    chipstack_eda_server: str = ""
    unit_test_flow: str = ""
    designs: list = []
    nr_of_syntax_fix_attempts: int = 0
    bearer_authorization_token: str = ""
    use_slang_for_syntax_ckeck: bool = False
    outdir: str = ""
    root_dir: str = ""

    model_config = ConfigDict(arbitrary_types_allowed=True)

    def read_and_parse_config(self, yml_config_file):

        if not os.path.exists(yml_config_file):
            print(
                f"[ERROR {get_current_time()}] The file '{yml_config_file}' does not exist. Check your REGRESSION_CONTROL_CFG.",
                flush=True,
            )
            exit(0)
        with open(yml_config_file, "r") as file:
            config = yaml.safe_load(file)

        self.chipstack_eda_server = os.getenv("CHIPSTACK_EDA_SERVER", "")
        self.chipstack_python_server = os.getenv("CHIPSTACK_PYTHON_SERVER", "")
        self.bearer_authorization_token = os.getenv("BEARER_AUTHORIZATION_TOKEN", "")
        self.unit_test_flow = os.getenv("UNIT_TEST_FLOW", "")
        self.nr_of_syntax_fix_attempts = int(os.getenv("NR_OF_SYNTAX_FIX_ATTEMPTS", 0))
        self.use_slang_for_syntax_ckeck = int(
            os.getenv("USE_SLANG_FOR_SYNTAX_CKECK", 0)
        )
        designs = config.get("designs", [])
        self.outdir = os.getenv("OUTDIR", "")
        self.root_dir = config.get("designs_root_dir", "./")
        requested_designs = os.getenv("REQUESTED_DESIGNS", "")

        if not self.root_dir:
            print(
                "[ERROR {get_current_time()}] The 'designs_root_dir' environment variable is not set. Please set it to the root directory of the project.",
                flush=True,
            )
            exit(0)

        if not self.bearer_authorization_token:
            print(
                "[ERROR {get_current_time()}] The 'BEARER AUTHORIZATION_TOKEN' environment variable is not set. "
                + "Please set it to the bearer authorization token.",
                flush=True,
            )

        if not self.unit_test_flow:
            print(
                "[ERROR {get_current_time()}] The 'UNIT_TEST_FLOW' environment variable is not set. "
                + "Please set it to either 'Formal' or 'Simulation'.",
                flush=True,
            )
            exit(0)

        if not self.outdir:
            print(
                "[ERROR {get_current_time()}] The 'OUTDIR' environment variable is not set. "
                + "Please set it to the output directory.",
                flush=True,
            )
            exit(0)

        if not self.chipstack_python_server:
            print(
                "[ERROR {get_current_time()}] The 'CHIPSTACK_PYTHON_SERVER' environment variable is not set. "
                + "Please set it to the Chipstack Python server.",
                flush=True,
            )
            exit(0)

        if not self.nr_of_syntax_fix_attempts:
            print(
                "[ERROR {get_current_time()}] The 'NR_OF_SYNTAX_FIX_ATTEMPTS' environment variable is not set. "
                + "Please set it to the number of syntax fix attempts.",
                flush=True,
            )
            exit(0)

        if not self.use_slang_for_syntax_ckeck:
            print(
                "[ERROR {get_current_time()}] The 'USE_SLANG_FOR_SYNTAX_CKECK' environment variable is not set. ",
                flush=True,
            )
            exit(0)

        if not self.chipstack_eda_server:
            print(
                "[ERROR {get_current_time()}] The 'CHIPSTACK_EDA_SERVER' environment variable is not set. "
                + "Please set it to the Chipstack EDA server.",
                flush=True,
            )
            exit(0)

        if not self.unit_test_flow in ["Formal", "Simulation"]:
            print(
                "[ERROR {get_current_time()}] The 'UNIT_TEST_FLOW' environment variable must be either 'Formal' or 'Simulation'.",
                flush=True,
            )
            exit(0)

        if requested_designs == "":
            print(
                "[INFO {get_current_time()}] The 'REQUESTED_DESIGNS' environment variable is not set. "
                + "Will regress all the designs.",
                flush=True,
            )
            exit(0)

        if requested_designs == "ALL_DESIGNS":
            requested_designs_lst = sorted(designs.keys())
        else:
            requested_designs_lst = sorted(
                set([design.strip() for design in requested_designs.split(",")])
            )
        for design in requested_designs_lst:
            if design not in designs:
                print(
                    f"[INFO {get_current_time()}] Skipping design '{design}' as it is not defined in designs.yml file.",
                    flush=True,
                )
            else:
                self.designs.append(
                    {
                        "name": design,
                        "top": designs[design].get("top", ""),
                        "dependencies": designs[design].get("dependencies", []),
                    }
                )

        # print(json.dumps(self.designs, indent=2))
        print_json_without_quotes(self.designs)

        return config

    def config_safety_check(self, config):
        errors_local = []
        if not config:
            error_msg = "The config dictionary is empty."
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local

        if "bearer_authorization_token" not in config:
            error_msg = "The 'bearer_authorization_token' key is missing in the config dictionary."
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local
        self.bearer_authorization_token = config["bearer_authorization_token"]

        if "unit_test_flow" not in config:
            error_msg = "[ERROR {get_current_time()}] The 'unit_test_flow' key is missing in the config dictionary."

            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local
        else:
            self.unit_test_flow = config["unit_test_flow"]

        if config["unit_test_flow"] not in ["Formal", "Simulation"]:
            error_msg = "[ERROR {get_current_time()}] The 'unit_test_flow' key must be either 'Formal' or 'Simulation'."
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local

        if "root" not in config:
            error_msg = "The 'root' key is missing in the config dictionary."
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local
        elif not os.path.exists(config["root"]):
            error_msg = "The root directory {config['root']} does not exist."
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local

        else:
            print(
                f"[INFO {get_current_time()}] The root directory is: {config['root']}. ",
                flush=True,
            )
            self.root = config["root"]

        if "chipstack_license_key" not in config:
            error_msg = (
                "The 'chipstack_license_key' key is missing in the config dictionary."
            )
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local

        if "outdir" not in config:
            error_msg = "The 'outdir' key is missing in the config dictionary."
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local
        else:
            self.outdir = config["outdir"]

        if "unit_test_flow" not in config:
            error_msg = "The 'unit_test_flow' key is missing in the config dictionary."
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local
        else:
            self.unit_test_flow = config["unit_test_flow"]

        if "chipstack_python_server" not in config:
            error_msg = (
                "The 'chipstack_python_server' key is missing in the config dictionary."
            )
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local
        else:
            self.chipstack_python_server = config["chipstack_python_server"]

        if "nr_of_syntax_fix_attempts" not in config:
            error_msg = "The 'nr_of_syntax_fix_attempts' key is missing in the config dictionary."
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local
        else:
            self.nr_of_syntax_fix_attempts = config["nr_of_syntax_fix_attempts"]

        if "chipstack_eda_server" not in config:
            error_msg = (
                "The 'chipstack_eda_server' key is missing in the config dictionary."
            )
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local
        else:
            self.chipstack_eda_server = config["chipstack_eda_server"]

        if "designs" not in config or not config["designs"]:
            error_msg = "No designs found in the config dictionary."
            errors_local.append(error_msg)
            print("[ERROR {get_current_time()}] " + error_msg, flush=True)
            return errors_local
        else:
            self.designs = config["designs"]

        return errors_local
