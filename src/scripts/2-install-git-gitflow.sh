#!/usr/bin/env bash

GIT_USER="leogm360"
GIT_EMAIL="leogm360@gmail.com"

# add git private repository to apt list
sudo add-apt-repository -y ppa:git-core/ppa

# update apt index and install git and git-flow
sudo apt update && sudo apt install git git-flow -y

# config git global default branch to main
git config --global init.defaultBranch main

# config git global core editor to vscode
git config --global core.editor "code -w"

# config git global user name
git config --global user.name "$GIT_USER"

# config git global user email
git config --global user.email "$GIT_EMAIL"

# generate ssh keys with user email
ssh-keygen -t ed25519 -C "$GIT_EMAIL"

# checks if ssh agent is running in the background
eval "$(ssh-agent -s)" || exit 1

# add generated keys to ssh agent
ssh-add "$HOME/.ssh/id_ed25519"
