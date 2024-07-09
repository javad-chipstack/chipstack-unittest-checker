import os
import yaml
import requests


def load_yaml(file_path):
    # Get the absolute path of the YAML file
    file_path = os.path.abspath("cfg_files/server_monitor.yml")
    print(f"Absolute path of the YAML file: {file_path}")

    # Check if the file exists
    if not os.path.exists(file_path):
        print(f"The file {file_path} does not exist.")
        return

    with open(file_path, "r") as file:
        return yaml.safe_load(file)


def call_endpoint(server_name, server_url, endpoint):
    url = f"{server_url}{endpoint.get('path')}"
    method = endpoint.get("method", "GET").upper()
    data = endpoint.get("data", {})
    files = endpoint.get("files", {})

    # Prepare files for the request
    print(f"Preparing files for the request to {url} with method {method}")
    files_to_send = {}
    try:
        for key, file_path in files.items():
            # Attempt to open each file in binary read mode
            print(f"Attempting to open file {file_path} for key {key}")
            try:
                files_to_send[key] = open(file_path, "rb")
                print(f"Successfully opened file {file_path} for key {key}")
            except FileNotFoundError:
                print(f"File {file_path} not found for key {key}. Skipping this file.")
            except IOError as e:
                print(
                    f"Error opening file {file_path} for key {key}: {e}. Skipping this file."
                )

        response = None
        try:
            # Make the network request based on the method
            print(f"Making {method} request to {url}")
            if method == "GET":
                response = requests.get(url, verify=False)
            elif method == "POST":
                response = requests.post(
                    url, data=data, files=files_to_send, verify=False
                )

            print(
                f"Received response with status code {response.status_code} from {url}"
            )
            return response

        except requests.RequestException as e:
            print(f"Request to {url} failed: {e}")
            return None

    finally:
        # Ensure files are closed after the request
        print("Closing opened files")
        for file in files_to_send.values():
            try:
                file.close()
                print("File closed successfully")
            except Exception as e:
                print(f"Error closing file: {e}")


def main():
    # Load configuration from YAML file
    config = load_yaml("cfg_files/server_monitor.yml")
    servers = config.get("servers", [])

    # Iterate over each server and its endpoints, and call them
    for server_config in servers:
        server_name = server_config.get("name")
        server_url = server_config.get("url")
        endpoints = server_config.get("endpoints", [])
        for endpoint in endpoints:
            response = call_endpoint(server_name, server_url, endpoint)
            print(
                f"Called {server_name} ({server_url}{endpoint['path']}) with method {endpoint['method']}. Status code: {response.status_code}"
            )
            try:
                print("Response data:", response.json())
            except ValueError:
                print("Response data is not in JSON format")


if __name__ == "__main__":
    main()
