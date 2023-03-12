#!/usr/bin/env bash

# download gpg key of github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg

# add read permission to group and others to the key
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg

# add gpg keyring to apt list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null

# update apt index
sudo apt update

# install github cli
sudo apt install gh
