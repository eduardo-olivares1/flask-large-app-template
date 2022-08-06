#Start werkzueg server in background and save PID for later
flask run --port=5000 &
python -m unittest discover tests --verbose