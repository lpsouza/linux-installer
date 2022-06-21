#!/bin/bash

INSTALL_NAME="Jekyll"

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

    sudo apt-get install -y ruby-full zlib1g-dev
    echo 'export GEM_HOME="$HOME/.gems"' >> $HOME/.bashrc
    echo 'export PATH="$PATH:$HOME/.gems/bin"' >> $HOME/.bashrc
    export GEM_HOME="$HOME/.gems"
    export PATH="$PATH:$HOME/.gems/bin"
    gem install jekyll bundler

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
