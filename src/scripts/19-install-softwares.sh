#!/usr/bin/env bash

TMP='../tmp'

# slack
curl -C - -L "https://downloads.slack-edge.com/releases/linux/4.29.149/prod/x64/slack-desktop-4.29.149-amd64.deb" --output "$TMP/slack.deb"

# discord
curl -C - -L "https://dl.discordapp.net/apps/linux/0.0.25/discord-0.0.25.deb" --output "$TMP/discord.deb"

# vscode
curl -C - -L "https://az764295.vo.msecnd.net/stable/5e805b79fcb6ba4c2d23712967df89a089da575b/code_1.76.1-1678294265_amd64.deb" --output "$TMP/code.deb"

# hyper tm
curl -C - -L "https://releases.hyper.is/download/deb" --output "$TMP/hyper.deb"

# insomnia
curl -C - -L "https://objects.githubusercontent.com/github-production-release-asset-2e65be/56899284/8d00c6ee-70ff-437d-8a9c-cd2939b79062?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20230312%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230312T014104Z&X-Amz-Expires=300&X-Amz-Signature=7aedee5787747b2a89d985d0181a7ed3e8235a7e35bf9bc7b289ec05d1260577&X-Amz-SignedHeaders=host&actor_id=80992604&key_id=0&repo_id=56899284&response-content-disposition=attachment%3B%20filename%3DInsomnia.Core-2023.1.0.deb&response-content-type=application%2Foctet-stream" --output "$TMP/insomnia.deb"

# google chrome
curl -C - -L "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" --output "$TMP/chrome.deb"

# docker desktop
curl -C - -L "https://desktop.docker.com/linux/main/amd64/docker-desktop-4.17.0-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64" --output "$TMP/docker-desktop.deb"

# dbeaver
curl -C - -L "https://download.dbeaver.com/community/23.0.0/dbeaver-ce_23.0.0_amd64.deb" --output "$TMP/dbeaver.deb"

#install all softwares
sudo apt install -y "$PWD/$TMP"/*.deb
