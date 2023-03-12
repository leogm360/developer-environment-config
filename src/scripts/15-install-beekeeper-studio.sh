#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART BEEKEEPER INSTALL...\n$NO_COLOR"

# create a gpg keyring file for beekeeper in trusted gpg keyring
sudo touch /usr/share/keyrings/apt.beekeeper.io.gpg

# dumps beekeeper gpg key to trusted gpg keyring
curl https://deb.beekeeperstudio.io/beekeeper.key | gpg --dearmor | sudo tee /usr/share/keyrings/apt.beekeeper.io.gpg >/dev/null

# add beekeeper repository to apt list index
echo "deb [signed-by=/usr/share/keyrings/apt.beekeeper.io.gpg arch=amd64] https://deb.beekeeperstudio.io stable main" | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list

# update apt index and install beekeeper
sudo apt update && sudo apt install beekeeper-studio -y

echo -e "$BOLD_LIGHT_BLUE\nEND BEEKEEPER INSTALL...\n$NO_COLOR"
