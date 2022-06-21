#!/bin/bash

INSTALL_NAME="Docker"

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

    curl https://get.docker.com | sh

    # Change docker to execute via non superuser
dockerd-rootless-setuptool.sh install
echo "# Running docker without sudo" >> $HOME/.bashrc
echo "export PATH=/usr/bin:$PATH" >> $HOME/.bashrc
echo "export DOCKER_HOST=unix:///run/user/1000/docker.sock" >> $HOME/.bashrc

    [[ ! -d "$HOME/.config" ]] && mkdir $HOME/.config
    echo $INSTALL_NAME >> $INSTALL_FILE
fi
