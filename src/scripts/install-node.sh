#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

source "$HOME"/.nvm/nvm.sh

nvm install --lts

npm install --location=global yarn@latest vercel@latest netlify-cli@latest
