#!/bin/bash

INSTALL_NAME="duf"

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

    wget https://github.com/muesli/duf/releases/download/v0.8.0/duf_0.8.0_linux_amd64.deb
    sudo dpkg -i duf_0.8.0_linux_amd64.deb
    rm -f duf_0.8.0_linux_amd64.deb

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
