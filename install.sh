#!/bin/sh
# install script

# stow dotfiles
stow -d $PWD/programs -t $HOME nvim

# stow -d $PWD/files -t $HOME -D nvim

# rm -rf $HOME/.cache $HOME/.local/share/nvim $HOME/.local/state/nvim $PWD/files/nvim/.config/nvim/plugin
