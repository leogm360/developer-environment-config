#!/usr/bin/env bash

echo -e "$BOLD_LIGHT_BLUE\nSTART RUST INSTALL...\n$NO_COLOR"

# install rust version manager
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo -e "$BOLD_LIGHT_BLUE\nEND RUST INSTALL...\n$NO_COLOR"
