#!/usr/bin/env bash

cd ../temp || echo 'ERROR IN CHANGING DIRECTORIES'

curl -C - -O -L https://downloads.slack-edge.com/releases/linux/4.25.0/prod/x64/slack-desktop-4.25.0-amd64.deb

curl -C - -O -L https://zoom.us/client/latest/zoom_amd64.deb

curl -C - -O -L https://dl.discordapp.net/apps/linux/0.0.17/discord-0.0.17.deb

curl -C - -O -L https://az764295.vo.msecnd.net/stable/dfd34e8260c270da74b5c2d86d61aee4b6d56977/code_1.66.2-1649664567_amd64.deb

curl -C - -O -L https://repo.steampowered.com/steam/archive/precise/steam_latest.deb

curl -C - -L https://releases.hyper.is/download/deb >hyper.deb

curl -C - -L "https://updates.insomnia.rest/downloads/ubuntu/latest?&app=com.insomnia.app&source=website" >insomnia.deb

curl -C - -O -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i *.deb

sudo apt -f install -y

sudo rm -rf ./*
