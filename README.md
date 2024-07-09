## chipstack-regression

### run the following command in the system shell

~/.pyenv/versions/3.12.0/bin/python3.12 -m venv venv
~/.pyenv/versions/3.11.8/bin/python3.11 -m venv venv

source venv/bin/activate
pip install --upgrade pip
pip install  --no-cache-dir -r ../chipstack-client/requirements.txt
pip install  --no-cache-dir -r ./requirements.txt

pip install  --no-cache-dir ../chipstack-client

source venv/bin/deactivate at any time
