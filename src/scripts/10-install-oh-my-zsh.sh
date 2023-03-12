#!/usr/bin/env bash

# install zsh shell
sudo apt install zsh -y

# change default shell to zsh
chsh -s "$(which zsh)"

# install oh my zsh shell extension
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install oh my zsh auto suggestion plugin
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

# install oh my zsh fast synthax highlight plugin
git clone https://github.com/z-shell/F-Sy-H.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/F-Sy-H"

# install oh my zsh completion plugin
git clone https://github.com/zsh-users/zsh-completions "${ZSH_CUSTOM:-${ZSH:-$HOME/.oh-my-zsh}/custom}/plugins/zsh-completions"
