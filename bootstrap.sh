#!/bin/sh
#
# Usage
# -----
# 0. Make python, virtualenv and python-dev (python headers) are installed (if on ubuntu)
# 1. Set PATH_TO_PF_DEPLOYMENT to match wherever you've cloned prayfully-deployment
# 2. Execute in your shell:
#    ./bootstrap


echo Setting up virtualenv in ./ansible/
cd ansible
virtualenv ansible
echo Activating virtualenv
source ansible/bin/activate
echo install python dependencies
pip install paramiko PyYAML jinja2
cd ansible
git clone git://github.com/ansible/ansible.git 
cd ../..
