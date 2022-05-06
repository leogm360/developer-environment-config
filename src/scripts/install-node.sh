#!/bin/sh

sudo apt update && sudo apt upgade -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | sh

# shellcheck disable=SC21091
. "$HOME"/".zshrc"

nvm install --lts

npm install -g yarn vercel netlify-cli
