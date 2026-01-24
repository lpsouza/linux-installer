# linux-installer

This repo contains the playbooks to install and configure my linux environments. You can use like a reference to create your own playbooks.

## Requirements

### Installing Ansible

Choose your Linux distribution below:

#### Ubuntu/Debian

```bash
sudo apt update
sudo apt install -y ansible
```

#### CentOS/RHEL/Fedora

```bash
# For CentOS/RHEL 8+ and Fedora
sudo dnf install -y ansible

# For CentOS/RHEL 7
sudo yum install -y ansible
```

#### Arch Linux

```bash
sudo pacman -S ansible
```

#### openSUSE

```bash
sudo zypper install -y ansible
```

#### Using Pip (Universal)

```bash
pip install ansible
```

#### Using Snap (Universal)

```bash
sudo snap install ansible --classic
```

## How to Use

### Install a specific application

```bash
ansible-playbook playbooks/ubuntu/<playbook>.yaml --tags <tag>
```

### Install all applications from a playbook

```bash
ansible-playbook playbooks/ubuntu/<playbook>.yaml
```

### Install multiple specific applications

```bash
ansible-playbook playbooks/ubuntu/<playbook>.yaml --tags "tag1,tag2,tag3"
```

### Examples

```bash
# Install only Google Chrome
ansible-playbook playbooks/ubuntu/desktop.yaml --tags google_chrome

# Install Chrome, VSCode and Obsidian
ansible-playbook playbooks/ubuntu/desktop.yaml --tags "google_chrome,vscode,obsidian"

# Install all desktop applications
ansible-playbook playbooks/ubuntu/desktop.yaml
```

---

## Applications Installation Guide

This guide shows all applications available for installation through the Ansible playbooks.

### Initial Setup

This playbook installs and configures the initial setup for any Ubuntu machine. It includes essential packages like `git`, `curl`, `neovim`, `tmux`, etc. It also updates and upgrades apt packages.

**Playbook:** `playbooks/ubuntu/initial.yaml`

| Application/Tool | Command                                          |
| ---------------- | ------------------------------------------------ |
| Initial Setup    | `ansible-playbook playbooks/ubuntu/initial.yaml` |

---

### Desktop Applications

**Playbook:** `playbooks/ubuntu/desktop.yaml`

| Application/Tool       | Tag                  | Command                                                                    |
| ---------------------- | -------------------- | -------------------------------------------------------------------------- |
| CascadiaCode NerdFonts | `cascadia_nerdfonts` | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags cascadia_nerdfonts` |
| Google Chrome          | `google_chrome`      | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags google_chrome`      |
| VSCode                 | `vscode`             | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags vscode`             |
| Obsidian               | `obsidian`           | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags obsidian`           |
| Insync                 | `insync`             | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags insync`             |
| 1Password Desktop      | `onepassword`        | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags onepassword`        |
| LNXlink                | `lnxlink`            | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags lnxlink`            |
| WezTerm                | `wezterm`            | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags wezterm`            |
| RustDesk               | `rustdesk`           | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags rustdesk`           |
| Todoist                | `todoist`            | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags todoist`            |
| Remmina                | `remmina`            | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags remmina`            |
| Google Antigravity     | `antigravity`        | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags antigravity`        |

**Install all:** `ansible-playbook playbooks/ubuntu/desktop.yaml`

---

### CLI Applications

**Playbook:** `playbooks/ubuntu/cli.yaml`

| Application/Tool              | Tag                | Command                                                                  |
| ----------------------------- | ------------------ | ------------------------------------------------------------------------ |
| Node Version Manager (NVM)    | `nvm`              | `ansible-playbook playbooks/ubuntu/cli.yaml --tags nvm`                  |
| uv (Python package installer) | `uv`               | `ansible-playbook playbooks/ubuntu/cli.yaml --tags uv`                   |
| Github CLI                    | `github_cli`       | `ansible-playbook playbooks/ubuntu/cli.yaml --tags github_cli`           |
| GitHub Copilot CLI            | `copilot_cli`      | `ansible-playbook playbooks/ubuntu/cli.yaml --tags copilot_cli`          |
| Google Gemini CLI             | `gemini_cli`       | `ansible-playbook playbooks/ubuntu/cli.yaml --tags gemini_cli`           |
| OpenCode CLI                  | `opencode_cli`     | `ansible-playbook playbooks/ubuntu/cli.yaml --tags opencode_cli`         |
| GitHub Spec-Kit               | `speckit`          | `ansible-playbook playbooks/ubuntu/cli.yaml --tags speckit`              |
| Dev Container CLI             | `devcontainer_cli` | `ansible-playbook playbooks/ubuntu/cli.yaml --tags devcontainer_cli`     |
| 1Password CLI                 | `onepassword_cli`  | `ansible-playbook playbooks/ubuntu/cli.yaml --tags onepassword_cli`      |

**Install all:** `ansible-playbook playbooks/ubuntu/cli.yaml`

---

### DevOps Tools

**Playbook:** `playbooks/ubuntu/devops-tools.yaml`

| Application/Tool | Tag         | Command                                                                |
| ---------------- | ----------- | ---------------------------------------------------------------------- |
| Terraform        | `terraform` | `ansible-playbook playbooks/ubuntu/devops-tools.yaml --tags terraform` |
| AWS CLI          | `aws_cli`   | `ansible-playbook playbooks/ubuntu/devops-tools.yaml --tags aws_cli`   |

**Install all:** `ansible-playbook playbooks/ubuntu/devops-tools.yaml`

---

### Shell Customizations

**Playbook:** `playbooks/ubuntu/shell.yaml`

| Application/Tool | Tag        | Command                                                        |
| ---------------- | ---------- | -------------------------------------------------------------- |
| Z Shell (zsh)    | `zsh`      | `ansible-playbook playbooks/ubuntu/shell.yaml --tags zsh`      |
| Oh-My-Zsh        | `ohmyzsh`  | `ansible-playbook playbooks/ubuntu/shell.yaml --tags ohmyzsh`  |
| Starship prompt  | `starship` | `ansible-playbook playbooks/ubuntu/shell.yaml --tags starship` |

**Install all:** `ansible-playbook playbooks/ubuntu/shell.yaml`

---

### Custom Configurations

#### Lid Closing

This playbook configure the laptop to ignore the lid closing event.

**Playbook:** `playbooks/ubuntu/custom/lid-closing.yaml`

| Action             | Command                                                     |
| ------------------ | ----------------------------------------------------------- |
| Ignore Lid Closing | `ansible-playbook playbooks/ubuntu/custom/lid-closing.yaml` |

#### Realtek RTS5129/RTS5139 USB MMC Reader driver

This playbook installs and configures the Realtek RTS5129/RTS5139 USB MMC Reader driver.

**Playbook:** `playbooks/ubuntu/custom/rts5139-usbnet.yaml`

| Action         | Command                                                        |
| -------------- | -------------------------------------------------------------- |
| Install Driver | `ansible-playbook playbooks/ubuntu/custom/rts5139-usbnet.yaml` |
