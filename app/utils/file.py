import os
import re
import errno
import shutil
from typing import List, Tuple, Any
import tempfile
from app.utils.time import get_current_time

V_SV_FILE = "verilog/systemverilog"


def create_outdir(path):
    errors_local = []
    try:
        abs_path = os.path.abspath(path)
        clean_path = os.path.normpath(abs_path)
        if os.path.exists(clean_path):
            shutil.rmtree(clean_path)
        os.makedirs(clean_path)

        path_exists = os.path.exists(clean_path)
        if not path_exists:
            errors_local.append(f"Could not create the specified path '{clean_path}'.")

    except (OSError, IOError) as e:
        if isinstance(e, FileNotFoundError):
            errors_local.append("The specified path '{path}' does not exist.")
        elif isinstance(e, PermissionError):
            errors_local.append(
                f"Permission denied while creating the directory '{clean_path}'."
            )
        elif isinstance(e, FileExistsError):
            errors_local.append(
                f"The specified path '{clean_path}' already exists as a file."
            )
        elif isinstance(e, NotADirectoryError):
            errors_local.append(
                f"The specified path '{clean_path}' is not a directory."
            )
        else:
            errors_local.append(f"{e}")

    for err in errors_local:
        print(f"[ERROR {get_current_time()}] {err}", flush=True)

    return errors_local, clean_path


def canonical_path(path, root_dir):
    if os.path.isabs(path):
        return os.path.realpath(path)
    else:
        return os.path.realpath(os.path.join(root_dir, path))


# a function to write string `content` to a `file_path`
def write_str_to_file(file_path, content):
    """
    Write content to a file.

    Args:
        file_path (str): The path to the file.
        content (str or list): The content to write to the file. It will be written as is.

    Returns:
        bool: True if the content was successfully written to the file, False otherwise.
    """
    try:
        # Get teh directory path from the file path and create the directory if it does not exist
        create_directory_recursive(os.path.dirname(file_path))

        with open(file_path, "w") as file:
            if isinstance(content, str):
                file.write(content)
            else:
                return False
        return True
    except Exception as e:
        print(f"[ERROR {get_current_time()}] Error writing to file: {e}", flush=True)
        return False


def create_directory_recursive(directory_path: str) -> bool:
    try:
        os.makedirs(directory_path)
        return True
    except OSError as e:
        if e.errno == errno.EEXIST and os.path.isdir(directory_path):
            return True
        else:
            print(f"Error: {e}")
    return False


def convert_html_to_text(html_content: str) -> str:

    if not html_content:
        return ""
    # Define a regular expression pattern to match HTML tags
    pattern_tags = re.compile(r"<.*?>")
    # Use the pattern to replace HTML tags with an empty string
    text = re.sub(pattern_tags, "", html_content)
    return text


def _create_temp_files(
    file_contents: list[str],
    file_key: str,
    file_type=V_SV_FILE,
    file_prefix: str = "sv_file_",
    file_extension: str = ".sv",
) -> Tuple[List[str], List[Any]]:
    temp_file_names = []
    file_handles = []

    for file_content in file_contents:
        try:
            with tempfile.NamedTemporaryFile(
                mode="w", delete=False, prefix=file_prefix, suffix=file_extension
            ) as temp_file:
                temp_file.write(file_content)
                temp_file_names.append(temp_file.name)

            # note that this files is opened here and will be closed later in a cleanup function
            fr = open(temp_file.name, "r")
            # file_basename = os.path.basename(temp_file.name)
            # file_handles.append((file_key, (file_basename, fr, file_type)))
            file_handles.append(fr)

        except (
            IOError,
            PermissionError,
            FileNotFoundError,
            TypeError,
            OSError,
        ) as error:
            print(
                "Error writing to temporary file {}: {}".format(temp_file.name, error)
            )

    return temp_file_names, file_handles


def _cleanup_temp_files(file_list, temp_file_names):
    for temp_file in file_list:
        temp_file.close()

    for temp_file in temp_file_names:
        if temp_file and os.path.exists(temp_file):
            os.remove(temp_file)
