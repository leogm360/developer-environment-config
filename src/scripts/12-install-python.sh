#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART PYTHON INSTALL...\n$NO_COLOR"

# pre install necessary python and asdf dependencies
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev

# clones asdf repository localy
git clone https://github.com/asdf-vm/asdf.git "$HOME/.asdf" --branch v0.11.2

# shellcheck source=/dev/null
source "$HOME/.zshrc"

# add python to asdf control
asdf plugin-add python

# install the latest version of python
asdf install python

# sets python bin as global
asdf global python

# reaload shims
asdf reshim

# install pip last version
pip install --upgrade pip

# install python prefered packages
pip install pycodestyle pylance ipython black

# reaload shims
asdf reshim

echo -e "$BOLD_LIGHT_BLUE\nEND PYTHON INSTALL...\n$NO_COLOR"
