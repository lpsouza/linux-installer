#!/bin/bash

# This script generates an Ansible inventory file for localhost

# Create the inventory file
cat > inventory <<EOF
[linux]
localhost ansible_connection=local

[linux:vars]
ansible_user=$USER
ansible_become_user=root
ansible_become_method=sudo
ansible_shell_executable=/bin/bash
EOF
