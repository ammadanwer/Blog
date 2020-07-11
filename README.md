# How to run
1) Install python 3.6 or above on your machine
2) Install virtualenv on your machine. Instructions [here](https://programwithus.com/learn-to-code/Pip-and-virtualenv-on-Windows/).
3) Then run `virtualenv venv python3.6` in the root Blog folder. This should create a venv folder with python3 virtual environment in it.
4) Run `source venv/bin/activate` to activate this environment.
5) Run `pip install -r app/requirements.txt` to install project requirements.
6) May need to set PYTHONPATH to the root folder of the project.
7) run `python app/main.py` and voila. The server should be running at 127.0.0.1:5000
