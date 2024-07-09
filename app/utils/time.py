from datetime import datetime


def format_execution_time(execution_time):
    """
    The function `format_execution_time` converts a given time in seconds into a formatted string
    displaying hours, minutes, and seconds.

    :param execution_time: I see that you have a function to format the execution time in hours,
    minutes, and seconds. If you provide me with the value for `execution_time`, I can help you format
    it accordingly
    """

    hours, remainder = divmod(execution_time, 3600)
    minutes, seconds = divmod(remainder, 60)

    formatted_time = ""

    if hours > 0:
        formatted_time += "{:02} hours, ".format(int(hours))
    if minutes > 0:
        formatted_time += "{:02} minutes, ".format(int(minutes))
    formatted_time += "{:02} seconds".format(int(seconds))

    return formatted_time


def get_current_time():
    """
    The function `get_current_time` returns the current time in a formatted string.

    :return: The current time in the format "YYYY-MM-DD HH:MM:SS"
    """
    return datetime.now().strftime("%H:%M:%S")
