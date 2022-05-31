#!/usr/bin/env bash

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
./install-oh-my-zsh.sh
./install-power-level10k.sh

cd ../configs || echo 'ERROR IN CHANGING DIRECTORIES'

cp -r ./ "$HOME"

cd ../scripts || echo 'ERROR IN CHANGING DIRECTORIES'

./install-python.sh

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

echo -e "\n✨ All done."
