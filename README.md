# linux-installer

Welcome to the Linux Installer repository! This collection of Ansible playbooks empowers you to effortlessly install and configure software on your Linux system.

## Compatibility

Our Ansible playbooks have been rigorously tested on the following Linux distributions:

- Ubuntu 22.04.2 LTS

## Usage

Before diving into the Ansible magic, let's cover some essentials:

- These playbooks are tailored for fresh Linux installations.
- They are optimized for the local user 'lpsouza'. Modify the `remote_user` variable in each playbook if you prefer a different user.
- They are crafted for local execution. Alter the `hosts` variable in each playbook to target a distinct host and adjust the inventory file accordingly.
- The playbooks are designed for local machines with sudo access. Modify the `become_user` variable in each playbook to switch to another user if needed.

```bash
# Update the apt repository
sudo apt update

# Install Git and Ansible
sudo apt install git ansible

# Clone this repository
git clone https://github.com/lpsouza/linux-installer.git

# Set git global settings
export GIT_USERNAME="Your Name"
export GIT_EMAIL="your@email"

# Run the 'install-basics' playbook to install essential software
cd linux-installer
ansible-playbook playbooks/bundles/install-basics.yaml --ask-become-pass

# Let Ansible perform its magic! 🪄
```

## Playbook list

- bundles/
  - install-basics.yaml: Install essential playbooks
  - install-ubuntu-wsl2.yaml: Install playbooks for Ubuntu on WSL2
- azure-cli.yaml: Install [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/what-is-azure-cli)
- bash.yaml: Configure Bash
- bashtop.yaml: Install [Bashtop](https://github.com/aristocratos/bashtop)
- docker.yaml: Install [Docker](https://www.docker.com/)
- dotnet.yaml: Install [.NET SDK](https://dotnet.microsoft.com/en-us/)
- duf.yaml: Install [duf](https://github.com/muesli/duf)
- exa.yaml: Install [Exa](https://the.exa.website/)
- gh.yaml: Install [GitHub CLI](https://cli.github.com/)
- git.yaml: Configure Git global settings using `GIT_USERNAME` and `GIT_EMAIL` environment variables
- gns3.yaml: Install [GNS3](https://www.gns3.com/)
- helm.yaml: Install [Helm](https://helm.sh/)
- homeassistant-cli.yaml: Install [Home Assistant CLI](https://www.home-assistant.io/blog/2019/02/04/introducing-home-assistant-cli/) and configure `HASS_SERVER` and `HASS_TOKEN` environment variables.
- initial.yaml: Install basic\* software and configure some initial settings
- k3s.yaml: Install [k3s](https://k3s.io/)
- k9s.yaml: Install [K9s](https://k9scli.io/)
- keychain.yaml: Install [Keychain](https://www.funtoo.org/Keychain)
- kubecm.yaml: Install [KubeCM](https://kubecm.cloud/)
- kubectl.yaml: Install [kubectl](https://kubernetes.io/docs/tasks/tools/)
- lid-closing.yaml: Configure lid closing action to ignore
- mqtt-explorer.yaml: Install [MQTT Explorer](https://mqtt-explorer.com/)
- neovim.yaml: Install [Neovim](https://neovim.io/)
- nerdfont.yaml: Install [Nerd Fonts](https://www.nerdfonts.com/)
- nvm.yaml: Install [NVM](https://github.com/nvm-sh/nvm)
- passwordless.yaml: Configure passwordless sudo
- powershell.yaml: Install [PowerShell](https://docs.microsoft.com/en-us/powershell/)
- pubkey.yaml: Install public key using `PUBKEY` environment variable
- sshd.yaml: Configure SSH daemon
- starship.yaml: Install [Starship](https://starship.rs/)
- terraform.yaml: Install [Terraform](https://www.terraform.io/)
- tmux.yaml: Install [tmux](https://github.com/tmux/tmux)
- tz.yaml: Configure timezone data
- x-windows.yaml: Install X Windows System
- zsh.yaml: Install [ZSH](https://www.zsh.org/) and [Oh My ZSH](https://ohmyz.sh/)

### \*Basic software list

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

## Join the Automation Journey

Embrace effortless software installation and configuration! The power of Ansible is at your fingertips. Explore our playbooks, adapt them to your needs, and simplify your Linux experience. Let's automate together! 🚀
