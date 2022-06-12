#!/bin/bash

cd ~
sudo apt-get update -qq 
sudo apt-get upgrade -yy
sudo apt install wget -yy
# Installing software via snap.
echo "Installing software via snap..."
echo "Installing VLC Media Player"
sudo snap install vlc
sudo snap install postman 
sudo snap install --classic code
sudo snap install slack --classic

echo "Installing ubuntu-restricted-extras..."
sudo apt-get install ubuntu-restricted-extras -yy
echo "Installing gnome-tweaks..."
sudo apt-get install gnome-tweaks -yy

echo "Installing chrome..."
cd /home/${USER}/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

cd ~

echo "Installing Docker..."
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
sudo apt install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -qq
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker ${USER}
newgrp docker
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
