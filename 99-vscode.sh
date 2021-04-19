#!/bin/sh

# Visual Studio Code
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
sudo dpkg -i vscode.deb
sudo apt update
sudo apt install -f -y
rm vscode.deb
