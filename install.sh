#!/bin/sh
# install script

stow -d $PWD/files -t $HOME -S nvim

# rm -rf $HOME/.cache $HOME/.local/share/nvim $HOME/.local/state/nvim $HOME/dotfiles/Files/nvim/.config/nvim/plugin

