#!/usr/bin/env bash

cd .//src/scripts || echo 'ERROR IN CHANGING DIRECTORIES'

sudo chmod +x *.sh

start=$(date +%S)

./install-first-start.sh
./install-git-gitflow.sh
./install-node.sh
./install-softwares.sh
./install-docker.sh
./install-postgres.sh
./install-brave-browser.sh
./install-beekeeper-studio.sh
./install-heroku.sh
./install-ookla-speedtest
./install-inkscape.sh
./install-sticky-notes.sh
./install-oh-my-zsh.sh
./install-power-level10k.sh

cd ../configs || echo 'ERROR IN CHANGING DIRECTORIES'

cp -r ./ "$HOME"

cd "$HOME" || echo 'ERROR IN CHANGING DIRECTORIES'

end=$(date +%S)

echo "✨ All done (took $((end - start))s)."
