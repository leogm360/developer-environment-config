#!/usr/bin/env bash

# add indicator-sticky-notes private repository to apt list
sudo apt-add-repository -y ppa:umang/indicator-stickynotes

# install indicator-sticky-notes
sudo apt install indicator-stickynotes -y
