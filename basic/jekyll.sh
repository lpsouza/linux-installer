#!/bin/bash

# Jekyll
sudo apt-get install -y ruby-full zlib1g-dev
echo 'export GEM_HOME="$HOME/.gems"' >> $HOME/.bashrc
echo 'export PATH="$PATH:$HOME/.gems/bin"' >> $HOME/.bashrc
export GEM_HOME="$HOME/.gems"
export PATH="$PATH:$HOME/.gems/bin"
gem install jekyll bundler
