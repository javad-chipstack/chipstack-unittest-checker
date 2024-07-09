import os
import subprocess
import shutil
from app.utils.time import get_current_time


def main():
    if sync_repo(["chipstack-client", "playground"]):
        print(
            f"[INFO {get_current_time()}] All repos are synced successfully. ",
            flush=True,
        )
    else:
        print(
            f"[ERROR {get_current_time()}] Failed to sync some of the repos. ",
            flush=True,
        )
        exit(1)

    # copy cfg/chipstack-server.env to cfg_files/chipstack-server.env
    if not os.path.exists("./cfg_files/chipstack-server.env"):
        # check if ./cfg/chipstack-server.env exists
        if os.path.exists("./cfg/chipstack-server.env"):
            shutil.copyfile(
                "./cfg/chipstack-server.env", "./cfg_files/chipstack-server.env"
            )
            print(
                f"[INFO {get_current_time()}] Copied chipstack-server.env to cfg_files/chipstack-server.env. ",
                flush=True,
            )
        else:
            print(
                f"[ERROR {get_current_time()}] ./cfg/chipstack-server.env does not exist. ",
                flush=True,
            )
            exit(1)
    else:
        print(
            f"[INFO {get_current_time()}] cfg_files/chipstack-server.env already exists. ",
            flush=True,
        )

    print(f"[INFO {get_current_time()}] Done. ", flush=True)


def sync_repo(repo_List):
    ret_val = True
    for repo in repo_List:
        # write code to check if ./${repo} exists or not
        if os.path.exists(f"./{repo}"):
            print(
                f"[INFO {get_current_time()}] {repo} repo exists. Syncing with remote repo... ",
                flush=True,
            )
            # change directory to ${repo} and run git pull commands in the same system shell
            os.system(f"cd ./{repo} && git pull")
        else:
            print(
                f"[INFO {get_current_time()}] ./{repo} does not exist. Cloning the repo...",
                flush=True,
            )
            # clone the repo
            # run the command in the system shell
            cmd = f"git clone https://github.com/chipstack-ai/{repo}.git"
            print(
                f"[INFO {get_current_time()}] Running command: {cmd}. ",
                flush=True,
            )
            result = subprocess.run(cmd, shell=True)

            # check the exit code of the previous system command and print the message accordingly
            if result.returncode == 0:
                print(
                    f"[INFO {get_current_time()}] {repo} repo cloned successfully. ",
                    flush=True,
                )
            else:
                print(
                    f"[ERROR {get_current_time()}] Failed to clone {repo} repo. ",
                    flush=True,
                )
                ret_val = False

    return ret_val if len(repo_List) > 0 else False


# Check if the script is run directly (not imported as a module)
if __name__ == "__main__":
    # Call the main function
    main()
