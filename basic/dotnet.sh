#!/bin/bash

# .NET Core
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -4 -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sudo apt install -y dotnet-sdk-6.0
rm packages-microsoft-prod.deb
