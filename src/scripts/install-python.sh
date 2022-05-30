#!/usr/bin/env bash

sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0

echo -e "\nsource $HOME/.asdf/asdf.sh" >>"$HOME"/.zshrc

source ~/.zshrc

asdf plugin-add python

asdf install python 3.10.4

asdf global python 3.10.4

asdf list python
