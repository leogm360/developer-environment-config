#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART NODEJS INSTALL...\n$NO_COLOR"

# install node version manager script in local machine
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# source nvm script into actual bash session
# shellcheck source=/dev/null
source "$HOME/.nvm/nvm.sh"

# install the latest long term support version of nodejs
nvm install --lts

# update node pack manager to latest vesion
npm i -g npm@latest

# install all
npm i -g yarn@latest next@latest vercel@latest netlify-cli@latest @nestjs/cli@latest @angular/cli@latest vite@latest

echo -e "$BOLD_LIGHT_BLUE\nEND NODEJS INSTALL...\n$NO_COLOR"
