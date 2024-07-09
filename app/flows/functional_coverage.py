class FunctionalCoverageResult:
    def __init__(
        self,
        design_name: str,
        scenarios: dict = {},
        code: str = "",
    ):
        self.design_name: str = design_name
        self.scenarios: dict = scenarios
        self.result: str = code
