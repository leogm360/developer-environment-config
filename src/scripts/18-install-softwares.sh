#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART SOFTWARES INSTALL...\n$NO_COLOR"

# slack
curl -C - -L "https://downloads.slack-edge.com/releases/linux/4.29.149/prod/x64/slack-desktop-4.29.149-amd64.deb" --output "$ROOT$TMP/slack.deb"

# discord
curl -C - -L "https://dl.discordapp.net/apps/linux/0.0.25/discord-0.0.25.deb" --output "$ROOT$TMP/discord.deb"

# vscode
curl -C - -L "https://az764295.vo.msecnd.net/stable/5e805b79fcb6ba4c2d23712967df89a089da575b/code_1.76.1-1678294265_amd64.deb" --output "$ROOT$TMP/code.deb"

# hyper tm
curl -C - -L "https://releases.hyper.is/download/deb" --output "$ROOT$TMP/hyper.deb"

# insomnia
curl -C - -L "https://updates.insomnia.rest/downloads/ubuntu/latest?&app=com.insomnia.app&source=website" --output "$ROOT$TMP/insomnia.deb"

# google chrome
curl -C - -L "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" --output "$ROOT$TMP/chrome.deb"

# docker desktop
curl -C - -L "https://desktop.docker.com/linux/main/amd64/docker-desktop-4.17.0-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64" --output "$ROOT$TMP/docker-desktop.deb"

# dbeaver
curl -C - -L "https://download.dbeaver.com/community/23.0.0/dbeaver-ce_23.0.0_amd64.deb" --output "$ROOT$TMP/dbeaver.deb"

#install all softwares
sudo dpkg -i "$ROOT$TMP"/*.deb

echo -e "$BOLD_LIGHT_BLUE\nEND SOFTWARES INSTALL...\n$NO_COLOR"
