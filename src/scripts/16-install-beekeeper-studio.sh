#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART BEEKEEPER INSTALL...\n$NO_COLOR"

# add beekeeper repo to apt lists directory
wget --quiet -O - https://deb.beekeeperstudio.io/beekeeper.key | sudo apt-key add -

# add beekeeper gpg key to apt keyrings directory
echo "deb https://deb.beekeeperstudio.io stable main" | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list

# update apt and install beekeeper
sudo apt update && sudo apt install beekeeper-studio -y

echo -e "$BOLD_LIGHT_BLUE\nEND BEEKEEPER INSTALL...\n$NO_COLOR"
