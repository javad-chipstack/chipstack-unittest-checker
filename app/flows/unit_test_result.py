class UnitTestResult:

    def __init__(
        self,
        design_name: str,
        parsed_design: dict = {},
        mental_model: dict = {},
        scenarios: dict = {},
        testbench_code: str = "",
        testbench_code_after_syntax_fix: str = "",
    ):
        self.design_name: str = design_name
        self.parsed_design: dict = parsed_design
        self.mental_model: dict = mental_model
        self.scenarios: dict = scenarios
        self.testbench_code: str = testbench_code
        self.testbench_code_after_syntax_fix: str = testbench_code_after_syntax_fix
