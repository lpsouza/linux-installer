# linux-installer

This repo contains the playbooks to install and configure my linux environments. You can use it as a reference to create your own playbooks.

## Requirements

### Supported Architectures

This repository natively supports both **x86_64 (amd64)** and **aarch64 (arm64)** architectures on Ubuntu (24.04 / 26.04 LTS):

* **amd64 (x86_64)**: Full support across all playbooks, CLI tools, DevOps tools, desktop apps, and custom hardware configurations.
* **arm64 (aarch64)**: Full support for Initial Setup, Shell customizations, CLI tools, DevOps tools (Terraform, AWS CLI v2, Azure CLI, Google Cloud SDK, eksctl), and supported Desktop applications (VSCode, 1Password, WezTerm, Obsidian, Todoist, Remmina, Flameshot).
* **Architecture Guards**: Proprietary software lacking upstream ARM64 Linux builds (such as Google Chrome and Insync) and x86-specific hardware virtualization playbooks are guarded with `when: ansible_architecture == 'x86_64'` to prevent failures on ARM hosts.

### Installing Ansible

This repository is tailored for **Ubuntu (24.04 / 26.04 LTS)**.

#### Using Apt (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install -y ansible
```

#### Using Pip / Pipx (Virtual Environment)

```bash
pipx install --include-deps ansible
```

## How to Use

### Setup Inventory

Create your local inventory file from the example:

```bash
cp inventory.example inventory
```

Edit `inventory` to configure your target hosts and `ansible_user`.

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
# Install only Google Chrome (amd64)
ansible-playbook playbooks/ubuntu/desktop.yaml --tags google_chrome

# Install VSCode and Obsidian (multi-arch)
ansible-playbook playbooks/ubuntu/desktop.yaml --tags "vscode,obsidian"

# Install all desktop applications
ansible-playbook playbooks/ubuntu/desktop.yaml
```

---

## Applications Installation Guide

This guide shows all applications available for installation through the Ansible playbooks along with their architecture compatibility.

### Initial Setup

This playbook installs and configures the initial setup for any Ubuntu machine. It includes essential packages like `git`, `curl`, `neovim`, `tmux`, etc. It also updates and upgrades apt packages.

**Playbook:** `playbooks/ubuntu/initial.yaml`

| Component | Architecture | Description | Command |
| :--- | :--- | :--- | :--- |
| Initial Setup | `amd64 / arm64` | Base packages (`git`, `curl`, `neovim`, `tmux`, `jq`), apt upgrades, Tailscale safety, and hushlogin | `ansible-playbook playbooks/ubuntu/initial.yaml` |

---

### Desktop Applications

**Playbook:** `playbooks/ubuntu/desktop.yaml`

| Application / Tool | Tag | Architecture | Description | Command |
| :--- | :--- | :--- | :--- | :--- |
| CascadiaCode NerdFonts | `cascadia_nerdfonts` | `amd64 / arm64` | Monospace Nerd Font with programming glyphs and ligatures | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags cascadia_nerdfonts` |
| Google Chrome | `google_chrome` | `amd64 only` | Google Chrome web browser (stable 64-bit .deb) | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags google_chrome` |
| VSCode | `vscode` | `amd64 / arm64` | Visual Studio Code editor (official Microsoft deb) | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags vscode` |
| Kiro IDE (AWS) | `kiro` | `amd64 / arm64` | Kiro AI development environment | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags kiro` |
| Obsidian | `obsidian` | `amd64 / arm64` | Markdown knowledge base and note-taking app (Snap) | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags obsidian` |
| Insync | `insync` | `amd64 only` | Google Drive and OneDrive sync client | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags insync` |
| 1Password Desktop | `onepassword` | `amd64 / arm64` | 1Password desktop GUI application | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags onepassword` |
| LNXlink | `lnxlink` | `amd64 / arm64` | Linux-to-Home Assistant MQTT bridge | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags lnxlink` |
| WezTerm | `wezterm` | `amd64 / arm64` | GPU-accelerated terminal emulator and multiplexer | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags wezterm` |
| Todoist | `todoist` | `amd64 / arm64` | Task manager and to-do list (Snap) | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags todoist` |
| Remmina | `remmina` | `amd64 / arm64` | Remote desktop client (RDP, VNC, SSH) | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags remmina` |
| Flameshot | `flameshot` | `amd64 / arm64` | Screen capture and annotation tool | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags flameshot` |
| Antigravity Desktop (2.0) | `antigravity` | `amd64 only` | Google Antigravity 2.0 desktop application | `ansible-playbook playbooks/ubuntu/desktop.yaml --tags antigravity` |

**Install all:** `ansible-playbook playbooks/ubuntu/desktop.yaml`

---

### CLI Applications

**Playbook:** `playbooks/ubuntu/cli.yaml`

| Application / Tool | Tag | Architecture | Description | Command |
| :--- | :--- | :--- | :--- | :--- |
| Node Version Manager (NVM) | `nvm` | `amd64 / arm64` | Node version manager with latest Node.js LTS | `ansible-playbook playbooks/ubuntu/cli.yaml --tags nvm` |
| uv | `uv` | `amd64 / arm64` | Fast Python package and project manager | `ansible-playbook playbooks/ubuntu/cli.yaml --tags uv` |
| GitHub CLI | `github_cli` | `amd64 / arm64` | Official GitHub command-line tool (`gh`) | `ansible-playbook playbooks/ubuntu/cli.yaml --tags github_cli` |
| GitHub Copilot CLI | `copilot_cli` | `amd64 / arm64` | GitHub Copilot command-line interface | `ansible-playbook playbooks/ubuntu/cli.yaml --tags copilot_cli` |
| Kiro CLI | `kiro_cli` | `amd64 / arm64` | Kiro AI developer CLI tool | `ansible-playbook playbooks/ubuntu/cli.yaml --tags kiro_cli` |
| OpenCode CLI | `opencode_cli` | `amd64 / arm64` | OpenCode AI coding agent CLI | `ansible-playbook playbooks/ubuntu/cli.yaml --tags opencode_cli` |
| GitHub Spec-Kit | `speckit` | `amd64 / arm64` | Specification-driven development toolkit (`specify`) | `ansible-playbook playbooks/ubuntu/cli.yaml --tags speckit` |
| Dev Container CLI | `devcontainer_cli` | `amd64 / arm64` | Development Containers reference CLI tool | `ansible-playbook playbooks/ubuntu/cli.yaml --tags devcontainer_cli` |
| 1Password CLI | `onepassword_cli` | `amd64 / arm64` | Official 1Password command-line tool (`op`) | `ansible-playbook playbooks/ubuntu/cli.yaml --tags onepassword_cli` |
| Antigravity CLI | `antigravity_cli` | `amd64 / arm64` | Google Antigravity CLI tool (`agy`) | `ansible-playbook playbooks/ubuntu/cli.yaml --tags antigravity_cli` |
| Antigravity Remote Control Daemon | `antigravity_remote` | `amd64 / arm64` | Remote control systemd user daemon for AGY | `ansible-playbook playbooks/ubuntu/cli.yaml --tags antigravity_remote` |
| Go | `go` | `amd64 / arm64` | The Go programming language compiler & toolchain | `ansible-playbook playbooks/ubuntu/cli.yaml --tags go` |
| K9s | `k9s` | `amd64 / arm64` | Terminal-based UI for Kubernetes clusters | `ansible-playbook playbooks/ubuntu/cli.yaml --tags k9s` |
| Glow | `glow` | `amd64 / arm64` | Terminal markdown renderer from Charm | `ansible-playbook playbooks/ubuntu/cli.yaml --tags glow` |

**Install all:** `ansible-playbook playbooks/ubuntu/cli.yaml`

---

### DevOps Tools

**Playbook:** `playbooks/ubuntu/devops-tools.yaml`

| Application / Tool | Tag | Architecture | Description | Command |
| :--- | :--- | :--- | :--- | :--- |
| Terraform | `terraform` | `amd64 / arm64` | HashiCorp Infrastructure as Code CLI | `ansible-playbook playbooks/ubuntu/devops-tools.yaml --tags terraform` |
| AWS CLI | `aws_cli` | `amd64 / arm64` | Official Amazon Web Services CLI v2 | `ansible-playbook playbooks/ubuntu/devops-tools.yaml --tags aws_cli` |
| Azure CLI | `azure_cli` | `amd64 / arm64` | Official Microsoft Azure CLI (`az`) | `ansible-playbook playbooks/ubuntu/devops-tools.yaml --tags azure_cli` |
| Google Cloud CLI | `gcloud_cli` | `amd64 / arm64` | Official Google Cloud SDK & CLI (`gcloud`) | `ansible-playbook playbooks/ubuntu/devops-tools.yaml --tags gcloud_cli` |
| eksctl | `eksctl` | `amd64 / arm64` | Official CLI for Amazon EKS | `ansible-playbook playbooks/ubuntu/devops-tools.yaml --tags eksctl` |

**Install all:** `ansible-playbook playbooks/ubuntu/devops-tools.yaml`

---

### Shell Customizations

**Playbook:** `playbooks/ubuntu/shell.yaml`

| Application / Tool | Tag | Architecture | Description | Command |
| :--- | :--- | :--- | :--- | :--- |
| Z Shell (zsh) | `zsh` | `amd64 / arm64` | Zsh package configured as default user shell | `ansible-playbook playbooks/ubuntu/shell.yaml --tags zsh` |
| Oh-My-Zsh | `ohmyzsh` | `amd64 / arm64` | Oh-My-Zsh framework with autosuggestions and syntax highlighting | `ansible-playbook playbooks/ubuntu/shell.yaml --tags ohmyzsh` |
| Starship prompt | `starship` | `amd64 / arm64` | Fast, customizable cross-shell prompt | `ansible-playbook playbooks/ubuntu/shell.yaml --tags starship` |

**Install all:** `ansible-playbook playbooks/ubuntu/shell.yaml`

---

### Custom Configurations

#### Lid Closing

This playbook configures the laptop to ignore the lid closing event.

**Playbook:** `playbooks/ubuntu/custom/lid-closing.yaml`

| Application / Tool | Tag | Architecture | Description | Command |
| :--- | :--- | :--- | :--- | :--- |
| Ignore Lid Closing | `lid_closing` | `amd64 / arm64` | Configures systemd logind to ignore laptop lid closing events | `ansible-playbook playbooks/ubuntu/custom/lid-closing.yaml --tags lid_closing` |

**Install all:** `ansible-playbook playbooks/ubuntu/custom/lid-closing.yaml`

#### Realtek RTS5129/RTS5139 USB MMC Reader Driver

This playbook installs and configures the Realtek RTS5129/RTS5139 USB MMC Reader driver.

**Playbook:** `playbooks/ubuntu/custom/rts5139-usbnet.yaml`

| Application / Tool | Tag | Architecture | Description | Command |
| :--- | :--- | :--- | :--- | :--- |
| Realtek RTS5139 Driver | `rts5139` | `amd64 / arm64` | Compiles RTS5139 kernel module and blacklists conflicting default modules | `ansible-playbook playbooks/ubuntu/custom/rts5139-usbnet.yaml --tags rts5139` |

**Install all:** `ansible-playbook playbooks/ubuntu/custom/rts5139-usbnet.yaml`

#### GPU Setup (Hybrid Intel iGPU + NVIDIA dGPU)

This playbook configures the Intel UHD 630 iGPU (VA-API/QuickSync) and NVIDIA GTX 1050 Ti dGPU for dual-mode operation (Host Docker Ollama + Dynamic VFIO KVM/Libvirt VM for Moonlight gaming).

**Playbook:** `playbooks/ubuntu/custom/gpu-setup.yaml`

| Application / Tool | Tag | Architecture | Description | Command |
| :--- | :--- | :--- | :--- | :--- |
| Intel iGPU Tools & VA-API | `igpu` | `amd64 only` | Intel media drivers, VA-API, and GPU monitoring utilities | `ansible-playbook playbooks/ubuntu/custom/gpu-setup.yaml --tags igpu` |
| GRUB IOMMU Configuration | `grub_iommu` | `amd64 only` | Configures GRUB with `intel_iommu=on`, `iommu=pt`, and KVM MSR ignores | `ansible-playbook playbooks/ubuntu/custom/gpu-setup.yaml --tags grub_iommu` |
| NVIDIA Driver & Persistence | `nvidia_driver` | `amd64 only` | Proprietary NVIDIA drivers and `nvidia-persistenced` service | `ansible-playbook playbooks/ubuntu/custom/gpu-setup.yaml --tags nvidia_driver` |
| NVIDIA Container Toolkit (Docker) | `docker_toolkit` | `amd64 only` | Configures NVIDIA Container Toolkit runtime for Docker / Ollama | `ansible-playbook playbooks/ubuntu/custom/gpu-setup.yaml --tags docker_toolkit` |
| KVM, Libvirt, VFIO & swtpm | `kvm_vfio` | `amd64 only` | Virtualization packages, swtpm TPM emulator, and VFIO boot modules | `ansible-playbook playbooks/ubuntu/custom/gpu-setup.yaml --tags kvm_vfio` |
| Dynamic GPU Switcher & Hooks | `gpu_switch` | `amd64 only` | Installs `gpu-mode` CLI and libvirt QEMU lifecycle hooks | `ansible-playbook playbooks/ubuntu/custom/gpu-setup.yaml --tags gpu_switch` |

**Install all:** `ansible-playbook playbooks/ubuntu/custom/gpu-setup.yaml`

#### Force Gigabit Ethernet

This playbook forces the Ethernet network interface to advertise exclusively Gigabit Ethernet (1000Mbps Full Duplex) and configures a systemd service to persist the setting across reboots.

**Playbook:** `playbooks/ubuntu/custom/force-gigabit.yaml`

| Application / Tool | Tag | Architecture | Description | Command |
| :--- | :--- | :--- | :--- | :--- |
| Force Gigabit Ethernet | `force_gigabit` | `amd64 / arm64` | Configures ethtool speed advertisement and enables persistent systemd `force-gigabit` unit | `ansible-playbook playbooks/ubuntu/custom/force-gigabit.yaml --tags force_gigabit` |

**Install all:** `ansible-playbook playbooks/ubuntu/custom/force-gigabit.yaml`

#### Logitech Litra Driver (Litra Glow & Litra Beam)

This playbook installs and configures the Logitech Litra Driver for Logitech Litra Glow and Litra Beam lights. It configures USB udev rules for non-root hardware access, installs system dependencies, sets up an isolated Python virtual environment in `/opt/litra-driver`, creates global symlinks for `lc` (CLI) and `lcui` (UI) in `/usr/local/bin`, and registers a desktop application launcher.

**Playbook:** `playbooks/ubuntu/custom/litra-driver.yaml`

| Application / Tool | Tag | Architecture | Description | Command |
| :--- | :--- | :--- | :--- | :--- |
| Logitech Litra Driver | `litra_driver` | `amd64 / arm64` | Installs `lc` (CLI) and `lcui` (UI) for Logitech Litra Glow and Beam, with system udev rules | `ansible-playbook playbooks/ubuntu/custom/litra-driver.yaml --tags litra_driver` |

**Install all:** `ansible-playbook playbooks/ubuntu/custom/litra-driver.yaml`
