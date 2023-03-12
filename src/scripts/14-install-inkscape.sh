#!/usr/bin/env bash

source ../helpers/colors.sh

echo -e "$BOLD_LIGHT_BLUE\nSTART INKSCAPE INSTALL...\n$NO_COLOR"

# add inkscape repository to apt list
sudo add-apt-repository -y ppa:inkscape.dev/stable

# install inkscape
sudo apt install inkscape -y

echo -e "$BOLD_LIGHT_BLUE\nEND INKSCAPE INSTALL...\n$NO_COLOR"
