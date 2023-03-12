#!/usr/bin/env bash

TMP="../tmp"
SPEEDTEST_TGZ="$TMP/speedtest.tgz"
SPEEDTEST="speedtest"
BIN="/bin"

source ../helpers/colors.sh

echo -e "$BOLD_LIGHT_BLUE\nSTART OOKLA SPEEDTEST INSTALL...\n$NO_COLOR"

# download ookla speedtest binary
curl -C - -L https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-linux-x86_64.tgz --output "$SPEEDTEST_TGZ"

# unpack ookla speedtest binary
tar -xf "$SPEEDTEST_TGZ"

# copy the binary to bin
sudo cp "$SPEEDTEST" "$BIN"

echo -e "$BOLD_LIGHT_BLUE\nEND OOKLA SPEEDTEST INSTALL...\n$NO_COLOR"