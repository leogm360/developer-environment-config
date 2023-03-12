#!/usr/bin/env bash

source ../helpers/colors.sh

echo -e "$BOLD_LIGHT_BLUE\nSTART BRAVE BROWSER INSTALL...\n$NO_COLOR"

# install brave browser dependencies
sudo apt install apt-transport-https -y

# add brave-browser repo to apt lists directory
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

# add brave-browser gpg key to apt keyrings directory
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# update apt and install brave-browser
sudo apt update && sudo apt install brave-browser -y

echo -e "$BOLD_LIGHT_BLUE\nEND BRAVE BROWSER INSTALL...\n$NO_COLOR"
