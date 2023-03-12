#!/usr/bin/env bash

# fix any broken install
sudo apt install -f

# last update index and upgrade any dependency left behind
sudo apt update && sudo apt upgrade -y

# remove any unneeded dependency
sudo apt autoremove -y
