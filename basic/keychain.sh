#!/bin/bash

INSTALL_NAME="keychain"

INSTALL_FILE="$HOME/.config/linux-installer"
INSTALL_ALREADY=false
if [ -f "$INSTALL_FILE" ]; then
    INSTALLED_NAME=`cat $INSTALL_FILE | grep $INSTALL_NAME`
    [[ $INSTALLED_NAME == $INSTALL_NAME ]] && INSTALL_ALREADY=true
fi

if [ "$INSTALL_ALREADY" == true ]; then
    echo "$INSTALL_NAME is already installed."
else
    echo "Installing $INSTALL_NAME."

    sudo apt install -y keychain
    echo "/usr/bin/keychain --nogui --quiet $HOME/.ssh/id_rsa" >> $HOME/.bashrc
    echo "source $HOME/.keychain/$HOSTNAME-sh" >> $HOME/.bashrc

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
