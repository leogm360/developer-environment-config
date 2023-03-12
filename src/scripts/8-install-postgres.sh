#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART POSTGRESQL INSTALL...\n$NO_COLOR"

# create a gpg keyring file for postgres in trusted gpg keyring
sudo touch /usr/share/keyrings/apt.postgresql.org.gpg

# dumps postgres gpg key to trusted gpg keyring
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /usr/share/keyrings/apt.postgresql.org.gpg >/dev/null

# add postgresql repository to apt list
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/apt.postgresql.org.gpg arch=amd64] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# update apt index and install postgresql
sudo apt update && sudo apt install postgresql -y

echo -e "$BOLD_LIGHT_BLUE\nEND POSTGRESQL INSTALL...\n$NO_COLOR"
