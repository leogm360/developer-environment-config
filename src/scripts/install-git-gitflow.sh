#!/bin/sh

sudo add-apt-repository -y ppa:git-core/ppa

sudo apt update && sudo apt install git git-flow -y

git config --global user.name "leogm360"

git config --global user.email "leogm360@gmail.com"

ssh-keygen -t ed25519 -C "leogm360@gmail.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub
