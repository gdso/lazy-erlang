LAZY-ERLANG
===========
*lazy-erlang* is an [ansible](http://ansible.cc) playbook that will help you, a lazy developer, 
setup up an erlang dev environment on a guest OS, e.g. a linux VM.

I won't lie, lazy-erlang is mostly for [my](http://github.com/gdso) personal use, someday I will merge this into a more 
elaborate Vagrant setup.
 
Installs:
  - erlang (R15B01)
  - rebar (2.0.0)

Bad Things&trade; *lazy-erlang* does to your guest OS:
  - blows away your .bashrc file (ansible should be backing it up) to update your $PATH
  - copies/compiles/installs erlang and rebar in ~/cellar/

Behind the covers, lazy-erlang uses [ansible](http://ansible.cc) for deployment, 
[kerl](https://github.com/spawngrid/kerl) for managing erlang installation.

# Installation

## Pre-requisites on host OS:
  - bash (bootstrap.sh is a shell script)
  - python
  - python's virtualenv

## Pre-requisites on target guest OS:
  - ssh
  - python (comes pre-installed on most linux installs)
  - password-less sudo

## Installation Instructions
bootstrap.sh installs the rest of the dependencies local to the repo itself:

    git clone git://github.com/gdso/lazy-erlang.git
    cd lazy-erlang
    ./bootstrap
    
# HOWTO use the Playbook

1. Edit the guest-host.ini, replace the host on line 3 with your guest hostname:
 
        guest0 ansible_ssh_host=[hostname]
        
2. Then setup a temporary ansible environment:

        ./setup-temp-ansible-env.sh

3. Then run install:
    
        ansible-playbook install.yml

   Or, if you haven't setup password-less sudo on remote host:
        
        ansible-playbook install.yml -K
    

  


