from chipstack_client.client_v2 import ClientV2


def read_files(file1_path, file2_path):
    try:
        # Open and read the first file
        with open(file1_path, "r") as file1:
            file1_content = file1.read()

        # Open and read the second file
        with open(file2_path, "r") as file2:
            file2_content = file2.read()

        return file1_content, file2_content

    except FileNotFoundError:
        print("One or both files not found.")
        return None, None


# Example usage:
dut_path = "/Users/javad/dev/playground/cdc_fifo/rtl/cdc_fifo.sv"
testbench_path = "/Users/javad/dev/playground/cdc_fifo/rtl/cdc_fifo_gen_unittest.sv"

dut_content, testbench_code = read_files(dut_path, testbench_path)

if dut_content is not None and testbench_code is not None:
    print(f"Size of file 1: {len(dut_content)}")
    print(f"\nSize of file 2: {len(testbench_code)}")

    client_v2 = ClientV2(
        api_key="5118073d-5410-4c46-baaf-0beb7c1b6528",
        chipstack_python_server="http://localhost:8000/v2/",
        chipstack_eda_server="http://24.4.201.87:81/",
        bearer="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NjE0YjZkMzAzMDMwODU0MDU1ZmIxMjEiLCJlbWFpbCI6ImphdmFkQGNoaXBzdGFjay5haSIsIm5hbWUiOiJKYXZhZCIsInR5cGUiOiJ1c2VyIiwiaWF0IjoxNzEyNzkyNTE2LCJleHAiOjE3MTM2NTY1MTZ9.wf74R7tyPYNlRektcEYuK1c8hxhYGJiY3W4FADamB0w",
    )

    invoke_eda_res = client_v2.run_simulation_tests(
        dut_files_contents=[dut_content],
        testbench_files_contents=[testbench_code],
    )

    print(invoke_eda_res)
