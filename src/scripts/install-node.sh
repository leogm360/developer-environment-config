#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

source ~/.nvm/nvm.sh

nvm install --lts

npm i -g npm@latest

npm i -g yarn@latest vercel@latest netlify-cli@latest @nestjs/cli
