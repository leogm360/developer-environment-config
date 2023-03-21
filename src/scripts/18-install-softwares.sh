#!/usr/bin/env bash

SOFWARES=(
    "https://downloads.slack-edge.com/releases/linux/4.29.149/prod/x64/slack-desktop-4.29.149-amd64.deb slack.deb"
    "https://dl.discordapp.net/apps/linux/0.0.25/discord-0.0.25.deb discord.deb"
    "https://az764295.vo.msecnd.net/stable/5e805b79fcb6ba4c2d23712967df89a089da575b/code_1.76.1-1678294265_amd64.deb code.deb"
    "https://releases.hyper.is/download/deb hyper.deb"
    "https://updates.insomnia.rest/downloads/ubuntu/latest?&app=com.insomnia.app&source=website insomnia.deb"
    "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb chrome.deb"
    "https://desktop.docker.com/linux/main/amd64/docker-desktop-4.17.0-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64 docker-desktop.deb"
    "https://download.dbeaver.com/community/23.0.0/dbeaver-ce_23.0.0_amd64.deb dbeaver.deb"
)

echo -e "$BOLD_LIGHT_BLUE\nSTART SOFTWARES INSTALL...\n$NO_COLOR"

# loop over softwares to install tuple array
for install in "${SOFWARES[@]}"; do
    # read the install string tuple and split it by empty space char
    IFS=" "
    read -ra software <<<"$install"

    # download the given software tuple
    curl -C - -L "${software[0]}" --output "$ROOT$TMP"/"${software[1]}"
done

#install all softwares
sudo dpkg -i "$ROOT$TMP"/*.deb

echo -e "$BOLD_LIGHT_BLUE\nEND SOFTWARES INSTALL...\n$NO_COLOR"
