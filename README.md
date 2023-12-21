# linux-installer

Welcome to the Linux Installer repository! This collection of Ansible playbooks empowers you to effortlessly install and configure software on your Linux system.

## Compatibility

The Ansible playbooks have been tested on the following Linux distributions:

- Ubuntu 22.04.2 LTS

## Usage

```bash
# Update the apt repository
sudo apt update

# Install Git and Ansible
sudo apt install git ansible

# Clone this repository
git clone https://github.com/lpsouza/linux-installer.git

# Change to the repository directory
cd linux-installer

# Run `generate-inventory.sh` to generate the inventory file
bash ./generate-inventory.sh

# Tip: Edit the inventory file and modify as needed

# Install basic software and configure some initial settings and passwordless sudo
ansible-playbook playbooks/initial.yaml playbooks/passwordless.yaml --ask-become-pass

# After that, you can run any playbook as you need.
```

### Initial playbook

The `initial.yaml` playbook installs the following software:

- ansible-lint: Checks playbooks for practices and behaviour that could potentially be improved
- apt-transport-https: Allows the use of repositories accessed via the HTTP Secure protocol
- apt-utils: Package manager related utility programs
- asciinema: Terminal session recorder
- build-essential: Packages for building Debian packages
- ca-certificates: Common CA certificates
- coreutils: GNU core utilities
- csvkit: Utilities for working with CSV files
- curl: Command line tool for transferring data with URL syntax
- fuse: Filesystem in Userspace
- elinks: Advanced and well-established feature-rich text mode web browser
- htop: Interactive process viewer
- iputils-ping: Tools to test the reachability of network hosts
- jq: Command line JSON processor
- libasound2: Shared library for ALSA applications
- libgtk-3-0: GTK graphical user interface library
- libnss3: Network Security Service libraries
- lsb-release: Linux Standard Base version reporting utility
- lm-sensors: Hardware monitoring sensors
- mc: Midnight Commander file manager
- mtr: Network diagnostic tool
- nano: Nano text editor (inspired by Pico)
- ncdu: Disk usage analyzer with an ncurses interface
- neofetch: Fast, highly customizable system info script
- net-tools: Legacy network management utilities
- pandoc: Universal document converter
- python-is-python3: Symlink /usr/bin/python to python3
- python3-pip: Python package installer
- software-properties-common: Common software needed to manage software repositories
- sqlite3: Command line interface for SQLite
- unzip: De-archiver for .zip files
- wget: Command line tool for retrieving files using HTTP, HTTPS, and FTP
- whois: Intelligent WHOIS client
- zip: Archiver for .zip files

## Playbooks installation

### AWS CLI

Install [AWS CLI](https://aws.amazon.com/cli/)

```bash
ansible-playbook playbooks/aws-cli.yaml
```

### Azure CLI

Install [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/what-is-azure-cli)

```bash
ansible-playbook playbooks/azure-cli.yaml
```

### Bash

Configure Bash

```bash
ansible-playbook playbooks/bash.yaml
```

### Bashtop

Install [Bashtop](https://github.com/aristocratos/bashtop)

```bash
ansible-playbook playbooks/bashtop.yaml
```

### Docker

Install [Docker](https://www.docker.com/)

```bash
ansible-playbook playbooks/docker.yaml
```

### .NET SDK

Install [.NET SDK](https://dotnet.microsoft.com/en-us/)

```bash
ansible-playbook playbooks/dotnet.yaml
```

### duf

Install [duf](https://github.com/muesli/duf)

```bash
ansible-playbook playbooks/duf.yaml
```

### Exa

Install [Exa](https://the.exa.website/)

```bash
ansible-playbook playbooks/exa.yaml
```

### GitHub CLI

Install [GitHub CLI](https://cli.github.com/)

```bash
ansible-playbook playbooks/gh.yaml
```

### Git

Configure Git global settings using `GIT_USERNAME` and `GIT_EMAIL` environment variables

```bash
export GIT_USERNAME="John Doe"
export GIT_EMAIL="john.doe@foobar.com"
ansible-playbook playbooks/git.yaml
```

### GNS3

Install [GNS3](https://www.gns3.com/)

```bash
ansible-playbook playbooks/gns3.yaml
```

### Helm

Install [Helm](https://helm.sh/)

```bash
ansible-playbook playbooks/helm.yaml
```

### Home Assistant CLI

Install [Home Assistant CLI](https://www.home-assistant.io/blog/2019/02/04/introducing-home-assistant-cli/) and configure `HASS_SERVER` and `HASS_TOKEN` environment variables.

```bash
export HASS_SERVER="https://homeassistant.local:8123"
export HASS_TOKEN="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
ansible-playbook playbooks/homeassistant-cli.yaml
```

### Insync

Install [Insync](https://www.insynchq.com/)

```bash
ansible-playbook playbooks/insync.yaml
```

### k3s

Install [k3s](https://k3s.io/)

```bash
ansible-playbook playbooks/k3s.yaml
```

### K9s

Install [K9s](https://k9scli.io/)

```bash
ansible-playbook playbooks/k9s.yaml
```

### Keychain

Install [Keychain](https://www.funtoo.org/Keychain)

```bash
ansible-playbook playbooks/keychain.yaml
```

### KubeCM

Install [KubeCM](https://kubecm.cloud/)

```bash
ansible-playbook playbooks/kubecm.yaml
```

### kubectl

Install [kubectl](https://kubernetes.io/docs/tasks/tools/)

```bash
ansible-playbook playbooks/kubectl.yaml
```

### Lid closing

Configure lid closing action to ignore

```bash
ansible-playbook playbooks/lid-closing.yaml
```

### MQTT Explorer

Install [MQTT Explorer](https://mqtt-explorer.com/)

```bash
ansible-playbook playbooks/mqtt-explorer.yaml
```

### Neovim

Install [Neovim](https://neovim.io/)

```bash
ansible-playbook playbooks/neovim.yaml
```

### Nerd Fonts

Install [Nerd Fonts](https://www.nerdfonts.com/)

```bash
ansible-playbook playbooks/nerdfont.yaml
```

### NVM

Install [NVM](https://github.com/nvm-sh/nvm)

```bash
ansible-playbook playbooks/nvm.yaml
```

### PowerShell

Install [PowerShell](https://docs.microsoft.com/en-us/powershell/)

```bash
ansible-playbook playbooks/powershell.yaml
```

### Pubkey

Install public key using `PUBKEY` environment variable

```bash
export PUBKEY="ssh-rsa xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
ansible-playbook playbooks/pubkey.yaml
```

### SSH daemon

Configure SSH daemon

```bash
ansible-playbook playbooks/sshd.yaml
```

### Starship

Install [Starship](https://starship.rs/)

```bash
ansible-playbook playbooks/starship.yaml
```

### Terraform

Install [Terraform](https://www.terraform.io/)

```bash
ansible-playbook playbooks/terraform.yaml
```

### tmux

Install [tmux](https://github.com/tmux/tmux)

```bash
ansible-playbook playbooks/tmux.yaml
```

### Timezone

Configure timezone data

```bash
ansible-playbook playbooks/tz.yaml
```

### X Windows

Install X Windows System

```bash
\ansible-playbook playbooks/x-windows.yaml
```

### ZSH

Install [ZSH](https://www.zsh.org/) and [Oh My ZSH](https://ohmyz.sh/)

```bash
ansible-playbook playbooks/zsh.yaml
```

## Join the Automation Journey

Embrace effortless software installation and configuration! The power of Ansible is at your fingertips. Explore our playbooks, adapt them to your needs, and simplify your Linux experience. Let's automate together! 🚀
