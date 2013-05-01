#!/bin/sh

HOSTS_FILE=guest-host.ini
source ansible/bin/activate
export ANSIBLE_HOSTS=$HOSTS_FILE
source ansible/ansible/hacking/env-setup

ssh-agent bash
ssh-add ~/.ssh/id_rsa
