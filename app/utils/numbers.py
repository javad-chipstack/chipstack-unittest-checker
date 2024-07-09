def is_numberable(value):
    try:
        float(value)
        return True
    except ValueError:
        return False


def convert_to_number(value: str) -> float:
    try:
        return float(value.strip("%"))
    except ValueError:
        return -1.0
