#!/bin/bash

###########
## Setup ##
###########
sudo apt-get update
sudo apt-get upgrade


######################
## Install Programs ##
######################

# git
sudo apt install git

# libffi-dev
sudo apt install libffi-dev

# nginx
sudo apt install nginx

# sqlite
sudo apt install sqlite

# libnss3-tools
sudo apt install libnss3-tools

# docker -- from https://docs.docker.com/engine/install/ubuntu/#prerequisites https://docs.docker.com/engine/install/ubuntu/
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install ca-certificates  gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# poetry
curl -sSL https://install.python-poetry.org | python3 -
echo '' >> ~/.profile
echo '# Set PATH for poetry.' >> ~/.profile
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.profile
export PATH="$HOME/.local/bin:$PATH"
poetry self update
poetry config virtualenvs.in-project true

# docker-compose
sudo apt install docker-compose

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '' >> ~/.profile
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.profile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew analytics off

# pyenv
brew install pyenv
echo '' >> ~/.profile
echo '# set up pyenv shell env' >> ~/.profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile
echo '' >> ~/.profile
alias pyenv-install-with-brew="CC='$(brew --prefix gcc)/bin/gcc-12' pyenv install"
# in bashrc
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# mkcert
brew install mkcert

# postgresql
brew install postgresql


############
## Set Up ##
############

# github
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
# put into github
# test
ssh -T git@github.com

# mkcert
cd ~/Desktop # going to a dir to run the next command in someware OTHER then the root
mkcert localhost.chatfunnels.dev localhost 127.0.0.1 ::1 local.chatfunnels.dev app.chatfunnels.dev
mv localhost.chatfunnels.dev+5-key.pem localhost-key.pem
mv localhost.chatfunnels.dev+5.pem localhost.pem 
sudo mkdir /.localhost-cert
sudo mv localhost.pem localhost-key.pem /.localhost-cert/
cd /.localhost-cert
mkcert --install

# install python
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
pyenv-install-with-brew -v 3.9.6
# go into all repos using python and run:
pyenv local 3.9.6
poetry env use 3.9.6



sudo groupadd docker # https://docs.docker.com/engine/install/linux-postinstall/
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world




