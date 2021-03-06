#!/bin/bash

# Upgrade packages
sudo apt update
sudo apt upgrade -y

# Essential packages
sudo apt install -y \
build-essential \
apt-transport-https \
ca-certificates \
software-properties-common \
gnome-keyring \
apt-utils \
curl \
wget \
lsb-release \
gnupg \
htop \
acl \
net-tools \
jq \
mc \
asciinema \
pandoc \
uidmap \
zip \
unzip \
coreutils \
ncdu
