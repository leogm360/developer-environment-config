#!/bin/sh

sudo apt update && sudo apt upgrade -y

sudo apt install curl -y

sudo add-apt-repository multiverse

sudo apt install ubuntu-restricted-extras -y

sudo apt install nvidia-driver-510 -y


