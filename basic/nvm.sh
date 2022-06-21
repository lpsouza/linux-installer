#!/bin/bash

INSTALL_NAME="NVM"

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

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | sh
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    nvm install --lts
    nvm use --lts
    npm install -g npm
    npm install -g jshint

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
