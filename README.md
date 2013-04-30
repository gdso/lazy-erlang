LAZY-ERLANG
===========
[Ansible](http://ansible.cc) scripts that help you setup up an erlang dev environment on a guest OS, e.g. a linux VM.
This is mostly for [my](http://github.com/gdso) personal use, someday I will merge this into a more 
elaborate Vagrant setup.
 
Installs:
  - erlang (R15B01)
  - rebar (2.0.0)

Behind the covers, lazy-erlang uses [ansible](http://ansible.cc) for deployment, 
[kerl](https://github.com/spawngrid/kerl) for managing erlang installation.

# Installation

## Pre-requisites on host machine:
  - bash (bootstrap.sh is a shell script)
  - python
  - python's virtualenv

## Pre-requisites on target machine:
  - ssh
  - python (comes pre-installed on most linux installs)

## Instructions
bootstrap.sh installs the rest of the dependencies local to the repo itself:

    git clone git://github.com/gdso/lazy-erlang.git
    cd lazy-erlang
    ./bootstrap
    

    

  


