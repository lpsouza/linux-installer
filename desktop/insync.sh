#!/bin/bash

INSTALL_NAME="Insync"

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

    INSYNC_REPO=$(lsb_release -cs)
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
    echo "deb http://apt.insync.io/debian $INSYNC_REPO non-free contrib" | sudo tee /etc/apt/sources.list.d/insync.list
    sudo apt update
    sudo apt install -y insync

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
