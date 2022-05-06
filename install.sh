#!/bin/sh

mkdir ./src/temp

cd ./src/scripts || exit 0

sudo chmod +x *.sh

sh install-first-start.sh

sh install-docker.sh

sh install-node.sh

sh install-postgres.sh

sh install-softwares.sh

sh install-brave-browser.sh

sh install-beekeeper-studio.sh

sh install-git-gitflow.sh

sh install-heroku.sh

sh install-ookla-speedtest

sh install-terminal.sh

sh install-inkscape.sh

cd .. || exit 0

sudo rm -rf /temp
