#!/usr/bin/env bash

# add qbit torrent private repository to apt list
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable

# install qbit torrent
sudo apt install qbittorrent -y
