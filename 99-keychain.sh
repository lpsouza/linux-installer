#!/bin/bash

# Keychain
sudo apt install -y keychain
echo "/usr/bin/keychain --nogui --quiet $HOME/.ssh/id_rsa" >> $HOME/.bashrc
echo "source $HOME/.keychain/$HOSTNAME-sh" >> $HOME/.bashrc
