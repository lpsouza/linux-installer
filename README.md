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

## Playbooks

| Playbook                                | Description                                                                    |
| --------------------------------------- | ------------------------------------------------------------------------------ |
| `playbooks/apps/1password-cli.yaml`     | Install [1Password CLI](https://1password.com/downloads/command-line/)         |
| `playbooks/apps/asciinema.yaml`         | Install [asciinema](https://asciinema.org/)                                    |
| `playbooks/apps/aws-cli.yaml`           | Install [AWS CLI](https://aws.amazon.com/cli/)                                 |
| `playbooks/apps/azure-cli.yaml`         | Install [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/)               |
| `playbooks/apps/bashtop.yaml`           | Install [bashtop](https://github.com/aristocratos/bashtop)                     |
| `playbooks/apps/bat.yaml`               | Install [bat](https://github.com/sharkdp/bat)                                  |
| `playbooks/apps/cli-utils-bundle.yaml`  | Install a bundle of CLI utilities (htop, mc, ncdu, neofetch, pandoc)           |
| `playbooks/apps/csvkit.yaml`            | Install [csvkit](https://csvkit.readthedocs.io/en/latest/)                     |
| `playbooks/apps/docker.yaml`            | Install [Docker](https://docs.docker.com/)                                     |
| `playbooks/apps/dotnet.yaml`            | Install [.NET SDK](https://dotnet.microsoft.com/)                              |
| `playbooks/apps/duf.yaml`               | Install [duf](https://github.com/muesli/duf)                                   |
| `playbooks/apps/exa.yaml`               | Install [exa](https://the.exa.website/)                                        |
| `playbooks/apps/github-cli.yaml`        | Install [GitHub CLI](https://cli.github.com/)                                  |
| `playbooks/apps/helm.yaml`              | Install [Helm](https://helm.sh/)                                               |
| `playbooks/apps/homeassistant-cli.yaml` | Install [Home Assistant CLI](https://www.home-assistant.io/)                   |
| `playbooks/apps/k3s.yaml`               | Install [k3s](https://k3s.io/)                                                 |
| `playbooks/apps/k9s.yaml`               | Install [k9s](https://k9scli.io/)                                              |
| `playbooks/apps/kubecm.yaml`            | Install [kubecm](https://kubecm.cloud/)                                        |
| `playbooks/apps/kubectl.yaml`           | Install [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/)      |
| `playbooks/apps/kustomize.yaml`         | Install [kustomize](https://kustomize.io/)                                     |
| `playbooks/apps/mongosh.yaml`           | Install [MongoDB Shell](https://docs.mongodb.com/mongodb-shell/)               |
| `playbooks/apps/neovim.yaml`            | Install [Neovim](https://neovim.io/)                                           |
| `playbooks/apps/network-bundle.yaml`    | Install a bundle of network utilities (iputils-ping, mtr, net-tools, whois)    |
| `playbooks/apps/nvm.yaml`               | Install [Node Version Manager](https://github.com/nvm-sh/nvm)                  |
| `playbooks/apps/powershell.yaml`        | Install [PowerShell](https://docs.microsoft.com/en-us/powershell/)             |
| `playbooks/apps/python3.yaml`           | Install [Python 3](https://www.python.org/)                                    |
| `playbooks/apps/starship.yaml`          | Install [Starship](https://starship.rs/)                                       |
| `playbooks/apps/terraform.yaml`         | Install [Terraform](https://www.terraform.io/)                                 |
| `playbooks/apps/tmux.yaml`              | Install [tmux](https://github.com/tmux/tmux)                                   |
| `playbooks/apps/web-cli-bundle.yaml`    | Install a bundle of web utilities (curl, elinks, jq, wget)                     |
| `playbooks/apps/zip.yaml`               | Install compression utility (zip and unzip)                                    |
| `playbooks/apps/zsh.yaml`               | Install [Zsh](https://www.zsh.org/) e [Oh My Zsh](https://ohmyz.sh/)           |
| `playbooks/apps/x/dbeaver.yaml`         | Install [DBeaver](https://dbeaver.io/) (X Window System required)              |
| `playbooks/apps/x/gns3.yaml`            | Install [GNS3](https://www.gns3.com/) (X Window System required)               |
| `playbooks/apps/x/insync.yaml`          | Install [Insync](https://www.insync.io/) (X Window System required)            |
| `playbooks/apps/x/mqtt-explorer.yaml`   | Install [MQTT Explorer](https://mqtt-explorer.com/) (X Window System required) |
| `playbooks/apps/x/x-windows.yaml`       | Install X Windows System (xorg, xinit, xrdp and optional desktop environment)  |
| `playbooks/config/bash.yaml`            | Configure Bash shell                                                           |
| `playbooks/config/git.yaml`             | Configure Git                                                                  |
| `playbooks/config/hushlogin.yaml`       | Create a `.hushlogin` file                                                     |
| `playbooks/config/lid-closing.yaml`     | Configure lid closing behavior                                                 |
| `playbooks/config/nerdfont.yaml`        | Install Nerd Fonts                                                             |
| `playbooks/config/passwordless.yaml`    | Configure passwordless sudo                                                    |
| `playbooks/config/pubkey.yaml`          | Configure public key authentication                                            |
| `playbooks/config/tz.yaml`              | Configure timezone                                                             |
