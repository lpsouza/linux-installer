#!/bin/bash

# Jekyll
sudo apt-get install -y ruby-full zlib1g-dev
echo 'export GEM_HOME="$HOME/.gems"' >> $HOME/.bashrc
echo 'export PATH="$HOME/.gems/bin:$PATH"' >> $HOME/.bashrc
source $HOME/.bashrc
gem install jekyll bundler
