#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART QBITTORRENT INSTALL...\n$NO_COLOR"

# add qbit torrent private repository to apt list
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable

# install qbit torrent
sudo apt install qbittorrent -y

echo -e "$BOLD_LIGHT_BLUE\nEND QBITTORRENT INSTALL...\n$NO_COLOR"
