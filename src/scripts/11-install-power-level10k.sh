#!/usr/bin/env bash

source ../helpers/colors.sh

echo -e "$BOLD_LIGHT_BLUE\nSTART POWERLEVEL10K INSTALL...\n$NO_COLOR"

# install powerleve10k terminal theme for oh my zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

echo -e "$BOLD_LIGHT_BLUE\nEND POWERLEVEL10K INSTALL...\n$NO_COLOR"
