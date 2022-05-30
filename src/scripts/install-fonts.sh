#!/usr/bin/env bash

cd ../temp || echo 'ERROR IN CHANGING DIRECTORIES'

curl -C - -O -L https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip

curl -C - -O -L https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip

mkdir firacode meslo

unzip -q Fira_Code_v6.2.zip -d ./firacode

unzip -q Meslo.zip -d ./meslo

cp ./firacode/variable_tff/FiraCode-VF.ttf "$HOME"/.local/share/fonts

cp ./meslo/*.ttf "$HOME"/.local/share/fonts

sudo rm -rf ./*

cd ../scripts || echo 'ERROR IN CHANGING DIRECTORIES'
