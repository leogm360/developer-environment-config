#!/usr/bin/env bash

SPEEDTEST_TGZ="$ROOT$TMP/speedtest.tgz"
SPEEDTEST="$ROOT$TMP/speedtest"
BIN="/bin"

echo -e "$BOLD_LIGHT_BLUE\nSTART OOKLA SPEEDTEST INSTALL...\n$NO_COLOR"

# download ookla speedtest binary
curl -C - -L https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-linux-x86_64.tgz --output "$SPEEDTEST_TGZ"

# unpack ookla speedtest binary
tar -cfx "$SPEEDTEST_TGZ" -C "$SPEEDTEST"

# copy the binary to bin
sudo cp "$SPEEDTEST" "$BIN"

echo -e "$BOLD_LIGHT_BLUE\nEND OOKLA SPEEDTEST INSTALL...\n$NO_COLOR"
