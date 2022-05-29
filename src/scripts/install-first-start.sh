#!/bin/sh

sudo apt update && sudo apt upgrade -y

sudo add-apt-repository multiverse

sudo apt install curl wget ubuntu-restricted-extras nvidia-driver-510 -y
