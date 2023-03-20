#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART POST INSTALL...\n$NO_COLOR"

# fix any broken install
sudo apt install -fy

# last update index and upgrade any dependency left behind
sudo apt update && sudo apt upgrade -y

# remove any unneeded dependency
sudo apt autoremove -y

echo -e "$BOLD_LIGHT_BLUE\nEND POST INSTALL...\n$NO_COLOR"
