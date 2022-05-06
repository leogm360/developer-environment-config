#!/usr/bin/env bash

sudo apt update && sudo apt upgade -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh

# shellcheck disable=SC1091
source "$HOME"/".zshrc"

nvm install --lts

npm install -g yarn vercel netlify-cli
