#!/bin/bash

INSTALL_NAME="OCI"

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

    curl -O https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh
    sudo bash install.sh --accept-all-defaults

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
