#!/bin/sh

# Expects python version to be 3.8.2 from pyenv

python -m pip install jupyter

mkdir -p ~/{.jupyter,notebooks}

curl -o ~/.jupyter/jupyter_notebook_config.py https://raw.githubusercontent.com/linuxacademy/content-using-pythons-maths-science-and-engineering-libraries/master/jupyter-setup/jupyter_notebook_config.py

sudo curl -o /etc/systemd/system/jupyter.service https://raw.githubusercontent.com/linuxacademy/content-using-pythons-maths-science-and-engineering-libraries/master/jupyter-setup/jupyter.service

sudo systemctl enable --now jupyter.service
