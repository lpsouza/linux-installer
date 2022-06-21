#!/bin/bash

INSTALL_NAME="GithubCLI"

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

    curl -O https://github.com/cli/cli/releases/download/v2.12.1/gh_2.12.1_linux_amd64.deb
    sudo dpkg -i gh_2.12.1_linux_amd64.deb
    rm gh_2.12.1_linux_amd64.deb

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
