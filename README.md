# linux-installer

This repository contains Ansible playbooks to install and configure software on Linux systems.

## Compatibility

The Ansible playbooks is compatible with the following operating systems:

- Ubuntu 22.04.2 LTS (x86_64)

## Usage

```bash
# Update the apt repository
sudo apt update

# Install the required packages
sudo apt install -y git ansible ansible-lint

# Clone this repository
git clone https://github.com/lpsouza/linux-installer.git

# Change to the repository directory
cd linux-installer

# Run `generate-inventory.sh` to generate the inventory file
bash ./generate-inventory.sh

# Tip: Edit the inventory file and modify as needed

# After that, you can run any playbook as you need.
```
