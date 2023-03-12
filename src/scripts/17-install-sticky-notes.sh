#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART INDICATOR STICKY NOTES INSTALL...\n$NO_COLOR"

# add indicator-sticky-notes private repository to apt list
sudo apt-add-repository -y ppa:umang/indicator-stickynotes

# install indicator-sticky-notes
sudo apt install indicator-stickynotes -y

echo -e "$BOLD_LIGHT_BLUE\nEND INDICATOR STICKY NOTES INSTALL...\n$NO_COLOR"
