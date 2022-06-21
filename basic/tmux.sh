#!/bin/bash

# tmux
sudo apt install tmux -y
echo "# Tmux autostart" >> $HOME/.bashrc
echo "if [ -z "$TMUX" ]; then tmux a || tmux; fi" >> $HOME/.bashrc
curl https://gist.githubusercontent.com/lpsouza/6534fd264197963e86dce01ece9f63d1/raw/c36e4fc56f89c1bc4cffd002b3078b1bc2e932da/.tmux.conf -o $HOME/.tmux.conf
