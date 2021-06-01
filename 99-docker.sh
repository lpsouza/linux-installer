#!/bin/bash

# Install Docker
curl https://get.docker.com | sh

# Change docker to execute via non superuser
sudo usermod -aG docker $USER
sudo setfacl -m user:$USER:rw /var/run/docker.sock
