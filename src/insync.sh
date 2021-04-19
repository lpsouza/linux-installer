#!/bin/sh

# Insync
INSYNC_REPO=$(lsb_release -cs)
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
echo "deb http://apt.insync.io/debian $INSYNC_REPO non-free contrib" | sudo tee /etc/apt/sources.list.d/insync.list
sudo apt update
sudo apt install -y insync
