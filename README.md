# linux-installer

This repository contains a script that installs a bunch of software on a fresh Linux installation using ansible playbooks.

## Compatibility

This ansible playbooks has been tested on the following Linux distributions:

- Ubuntu 22.04.2 LTS
- Debian GNU/Linux 11

## Usage

Before running the ansible playbooks, some considerations must be taken:

- The ansible playbooks are designed to be run on a fresh Linux installation
- The ansible playbooks are designed to be run on local user called `lpsouza` (change the `remote_user` variable on each playbook if you want to use another user)
- The ansible playbooks are designed to be run on a local machine (change the `hosts` variable on each playbook if you want to use another host and adjust the inventory file accordingly)
- The ansible playbooks are designed to be run on a local machine with sudo access (change the `become_user` variable on each playbook if you want to use another user)

```bash
# Update the apt repository
sudo apt update

# Install git and ansible
sudo apt install git ansible

# Clone this repository
git clone https://github.com/lpsouza/linux-installer.git

# Set git global settings
export GIT_USERNAME="Your Name"
export GIT_EMAIL="your@email"

# Run the install-essential playbook to instal essential software
ansible-playbook linux-installer/playbooks/install-essentials.yaml --ask-become-pass

# Let the ansible do the magic! :)
```

## Playbook groups

- **essential**: Playbooks that install essential software
- **optional**: Playbooks that install optional software

## Playbook list

- essential/
  - azure-cli.yaml: Install [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/what-is-azure-cli)
  - dotnet.yaml: Install [.NET SDK](https://dotnet.microsoft.com/en-us/)
  - exa.yaml: Install [Exa](https://the.exa.website/)
  - gh.yaml: Install [GitHub CLI](https://cli.github.com/)
  - git.yaml: Configure Git global settings
  - helm.yaml: Install [Helm](https://helm.sh/)
  - initial.yaml: Install basic* software
  - keychain.yaml: Install [Keychain](https://www.funtoo.org/Keychain)
  - kubecm.yaml: Install [KubeCM](https://kubecm.cloud/)
  - kubectl.yaml: Install [kubectl](https://kubernetes.io/docs/tasks/tools/)
  - nvm.yaml: Install [NVM](https://github.com/nvm-sh/nvm)
  - passwordless.yaml: Configure passwordless sudo
  - starship.yaml: Install [Starship](https://starship.rs/)
  - terraform.yaml: Install [Terraform](https://www.terraform.io/)
  - zsh.yaml: Install [ZSH](https://www.zsh.org/) and [Oh My ZSH](https://ohmyz.sh/)
- optional/
  - bashtop.yaml: Install [Bashtop](https://github.com/aristocratos/bashtop)
  - duf.yaml: Install [duf](https://github.com/muesli/duf)
  - jekyll.yaml: Install [Jekyll](https://jekyllrb.com/)
  - tmux.yaml: Install [tmux](https://github.com/tmux/tmux)
  - vim.yaml: Install [Vim](https://www.vim.org/)

### *Basic software list

- build-essential: Packages for building Debian packages
- apt-transport-https: Allows the use of repositories accessed via the HTTP Secure protocol
- ca-certificates: Common CA certificates
- software-properties-common: Common software needed to manage software repositories
- apt-utils: Package manager related utility programs
- curl: Command line tool for transferring data with URL syntax
- wget: Command line tool for retrieving files using HTTP, HTTPS, and FTP
- lsb-release: Linux Standard Base version reporting utility
- htop: Interactive process viewer
- net-tools: Legacy network management utilities
- jq: Command line JSON processor
- mc: Midnight Commander file manager
- asciinema: Terminal session recorder
- pandoc: Universal document converter
- zip: Archiver for .zip files
- unzip: De-archiver for .zip files
- coreutils: GNU core utilities
- ncdu: Disk usage analyzer with an ncurses interface
