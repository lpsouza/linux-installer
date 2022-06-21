#!/bin/bash

# Install Docker
curl https://get.docker.com | sh

# Change docker to execute via non superuser
dockerd-rootless-setuptool.sh install
echo "# Running docker without sudo" >> $HOME/.bashrc
echo "export PATH=/usr/bin:$PATH" >> $HOME/.bashrc
echo "export DOCKER_HOST=unix:///run/user/1000/docker.sock" >> $HOME/.bashrc
