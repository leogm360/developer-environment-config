#!/usr/bin/env bash

wget --quiet -O - https://deb.beekeeperstudio.io/beekeeper.key | gpg --dearmor | sudo tee /usr/share/keyrings/beekeeper.gpg

echo 'deb [signed-by=/usr/share/keyrings/beekeeper.gpg] https://deb.beekeeperstudio.io stable main' | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list

sudo apt update && sudo apt install beekeeper-studio -y
