#!/bin/sh

# exicute onece after installing using archinstall with desktop profile

## Update System
sudo pacman -Syyuu

## Install basic deps
sudo pacman -S git

## Install paru
cd /tmp/
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

