#!/usr/bin/env bash
# Set ENV vars
export FLASK_CONFIG=testing
export PATH=$PATH:$HOME/bin
#Start werkzueg server
flask run --port=5000 &
WSGI_PID=$(echo $!)

#Run tests
flask test

#Kill werkzueg server
kill $WSGI_PID