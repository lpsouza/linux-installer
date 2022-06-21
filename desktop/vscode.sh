#!/bin/bash

INSTALL_NAME="VSCode"

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

    wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
    sudo dpkg -i vscode.deb
    sudo apt update
    sudo apt install -f -y
    rm vscode.deb

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
