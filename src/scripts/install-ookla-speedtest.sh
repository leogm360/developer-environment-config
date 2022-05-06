#!/bin/sh
sudo apt install curl -y

curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash

sudo apt-get install speedtest -y
