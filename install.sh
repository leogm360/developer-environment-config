#!/usr/bin/env bash

mkdir ./src/temp || echo 'ERROR IN CREATING DIRECTORY'

cd ./src/scripts || echo 'ERROR IN CHANGING DIRECTORIES'

sudo chmod +x *.sh

./install-first-start.sh
./install-git-gitflow.sh
./install-node.sh
./install-softwares.sh
./install-docker.sh
./install-postgres.sh
./install-brave-browser.sh
./install-beekeeper-studio.sh
./install-heroku.sh
./install-ookla-speedtest.sh
./install-inkscape.sh
./install-sticky-notes.sh
./install-qbit-torrent.sh
./install-fonts.sh
./install-github-cli.sh
./install-oh-my-zsh.sh
./install-power-level10k.sh

cd ../configs || echo 'ERROR IN CHANGING DIRECTORIES'

cp -r ./ ~

cd ../scripts || echo 'ERROR IN CHANGING DIRECTORIES'

zsh install-python.sh

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

echo -e "\n✨ All done."
