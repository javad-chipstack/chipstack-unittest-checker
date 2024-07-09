def print_json_without_quotes(data, level=0):
    if isinstance(data, dict):
        for key, value in data.items():
            if isinstance(value, (dict, list)):
                print("  " * level + key + ":")
                print_json_without_quotes(value, level + 1)
            else:
                print("  " * level + key + ":", value)
    elif isinstance(data, list):
        for item in data:
            if isinstance(item, (dict, list)):
                print("  " * level + "---")
                print_json_without_quotes(item, level + 1)
            else:
                print("  " * level + "- " + str(item))
