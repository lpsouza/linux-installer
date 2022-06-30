#!/bin/bash

INSTALL_NAME="tmux"

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

    sudo apt install tmux -y
    echo "# Tmux autostart" >> $HOME/.bashrc
    echo "if [ -z \"\$TMUX\" ]; then tmux; exit; fi" >> $HOME/.bashrc
    curl https://gist.githubusercontent.com/lpsouza/6534fd264197963e86dce01ece9f63d1/raw/c36e4fc56f89c1bc4cffd002b3078b1bc2e932da/.tmux.conf -o $HOME/.tmux.conf

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
