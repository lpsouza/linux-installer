#!/bin/bash

# Run tests specs

# Change to ansible directory
cd /home/test/projects/linux-installer

# Run generate-inventory.sh
bash generate-inventory.sh

# Run the tests

## Initial playbook
ansible-playbook playbooks/ubuntu/initial.yaml

## Install z-shell
ansible-playbook playbooks/ubuntu/z-shell.yaml
