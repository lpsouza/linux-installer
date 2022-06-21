#!/bin/sh

INSTALL_NAME="vim"

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

    sudo apt install vim
    curl https://gist.githubusercontent.com/lpsouza/5dded5c48d62fb9eac6cc0d10609d96f/raw/d29735d8acfa329916bf1699fdd8383f4efc12ea/.vimrc -o $HOME/.vimrc

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
