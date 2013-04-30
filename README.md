LAZY-ERLANG
===========
*lazy-erlang* is an [Ansible](http://ansible.cc) playbook that will help you, a lazy developer, 
setup up an erlang dev environment on a guest OS, e.g. a linux VM.
This is mostly for [my](http://github.com/gdso) personal use, someday I will merge this into a more 
elaborate Vagrant setup.
 
Installs:
  - erlang (R15B01)
  - rebar (2.0.0)

Behind the covers, lazy-erlang uses [ansible](http://ansible.cc) for deployment, 
[kerl](https://github.com/spawngrid/kerl) for managing erlang installation.

# Installation

## Pre-requisites on host operating system (OS):
  - bash (bootstrap.sh is a shell script)
  - python
  - python's virtualenv

## Pre-requisites on target guest OS:
  - ssh
  - python (comes pre-installed on most linux installs)
  - password-less sudo

## Instructions
bootstrap.sh installs the rest of the dependencies local to the repo itself:

    git clone git://github.com/gdso/lazy-erlang.git
    cd lazy-erlang
    ./bootstrap
    

    

  


