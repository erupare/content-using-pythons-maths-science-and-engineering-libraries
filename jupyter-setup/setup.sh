#!/bin/sh

# copy jupyter_notebook_config.py > /home/cloud_user/.jupyter/jupyter_notebook_config.py
# copy jupyter.service > /etc/systemd/system/jupyter.service

pyenv shell 3.8.2

python -m pip install jupyter

sudo systemctl start jupyter.service
