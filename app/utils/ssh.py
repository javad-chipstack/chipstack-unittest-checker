import os
import subprocess
from app.utils.time import get_current_time


def check_passwordless_ssh(run_id: str, outdir_str) -> bool:
    if not run_id or not outdir_str:
        print(f"[ERROR {get_current_time()}] Missing required arguments.")
        return False

    eda_server_ssh_login_info = os.environ.get("EDA_SERVER_SSH_LOGIN_INFO", "")
    if not eda_server_ssh_login_info:
        print(
            f"[ERROR {get_current_time()}] EDA_SERVER_SSH_LOGIN_INFO environment variable is not set."
        )
        return False

    eda_server_ssh_port = os.environ.get("EDA_SERVER_SSH_PORT", "")

    try:
        # Attempt SSH login without password
        if eda_server_ssh_port:
            ssh_command = f"sshpass -pMehr2388 ssh -p {eda_server_ssh_port} {eda_server_ssh_login_info} exit > /dev/null 2>&1"
        else:
            ssh_command = f"sshpass -pMehr2388 ssh {eda_server_ssh_login_info} exit > /dev/null 2>&1"
        subprocess.run(ssh_command, shell=True, check=True)
    except subprocess.CalledProcessError as e:
        print(f"[ERROR {get_current_time()}] Passwordless SSH is not set up. {e}")
        return False
    except Exception as e:
        print(f"[ERROR {get_current_time()}] An error occurred: {e}")
        return False

    # copy dir recursively from remote dir to local dir
    try:
        if eda_server_ssh_port:
            scp_command = f"sshpass -pMehr2388 rsync -av -e \"ssh -p {eda_server_ssh_port}\" --exclude='**/xcelium.d/' --exclude='**/cov_work/' -e 'sshpass -pMehr2388 ssh -p {eda_server_ssh_port}' {eda_server_ssh_login_info}:/tmp/eda/{run_id}/ {outdir_str}/run_dir/ > /dev/null 2>&1"
        else:
            scp_command = f"sshpass -pMehr2388 rsync -av --exclude='**/xcelium.d/' --exclude='**/cov_work/' {eda_server_ssh_login_info}:/tmp/eda/{run_id}/ {outdir_str}/run_dir/ > /dev/null 2>&1"
        subprocess.run(scp_command, shell=True, check=True)
        return True
    except subprocess.CalledProcessError as e:
        print(f"[ERROR {get_current_time()}] rsync copy failed. {e}")
    except Exception as e:
        print(f"[ERROR {get_current_time()}] An error occurred: {e}")

    return False
