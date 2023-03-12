#!/usr/bin/env bash

# remove older docker versions
sudo apt remove docker docker-engine docker.io containerd runc

# installs packages that docker depends on
sudo apt install ca-certificates gnupg lsb-release -y

# download docker gpg key that validates original docker packages
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# install gpg key into apt keyring so it can be used to validate docker packages
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

# install docker and it's engine
sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io -y

# add session user to docker group so docker cli can be called without 'sudo'
sudo gpasswd -a "$USER" docker
