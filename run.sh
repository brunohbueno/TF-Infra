#!/bin/bash

sudo cp etc/rc.local /etc/
./run.sh

# Configurar o caminho para o Virtualenv
VIRTUALENV=/home/ubuntu/venv

pushd $(dirname "$0")
source $VIRTUALENV/bin/activate
export FLASK_APP=app.py
flask run --host=0.0.0.0 --port 8080
deactivate
popd
