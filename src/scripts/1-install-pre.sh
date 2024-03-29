#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART PRE INSTALL...\n$NO_COLOR"

# first update apt index and upgrade all packages
sudo apt update && sudo apt upgrade -y

# add multiverse ubuntu repository to apt list
sudo add-apt-repository multiverse

# install pre packages and video card drivers
sudo apt install curl wget synaptic ubuntu-restricted-extras nvidia-driver-525 -y

echo -e "$BOLD_LIGHT_BLUE\nEND PRE INSTALL...\n$NO_COLOR"
