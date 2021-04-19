#!/bin/sh

# Upgrade packages
sudo apt update
sudo apt upgrade -y

# Essential packages
sudo apt install -y build-essential apt-transport-https ca-certificates gnome-keyring apt-utils curl lsb-release gnupg htop nano
