#!/usr/bin/env bash

TMP='./tmp'
FIRACODE_DIR="$TMP/firacode"
FIRACODE_ZIP="$TMP/fira-code.zip"
MESLO_DIR="$TMP/meslo"
MESLO_ZIP="$TMP/meslo.zip"
LOCAL_FONTS="$HOME/.local/share/fonts"

echo -e "$BOLD_LIGHT_BLUE\nSTART FONTS INSTALL...\n$NO_COLOR"

# download fira code font
curl -C - -L https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip --output "$FIRACODE_ZIP"

# download meslo font
curl -C - -L https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip --output "$MESLO_ZIP"

# try executing commands in this block
try
(
    # check if fira code dir exists in tmp and create if not
    [ ! -d "$FIRACODE_DIR" ] && mkdir "$FIRACODE_DIR"

    # check if meslo dir exists in tmp and create if not
    [ ! -d "$MESLO_DIR" ] && mkdir "$MESLO_DIR"

    # unpack fira code font inside tmp fira code dir
    unzip -q "$FIRACODE_ZIP" -d "$FIRACODE_DIR"

    # unpack meslo font inside tmp meslo dir
    unzip -q "$MESLO_ZIP" -d "$MESLO_DIR"

    # check if system has a custom fonts dir and create if not
    [ ! -d "$LOCAL_FONTS" ] && mkdir "$LOCAL_FONTS"

    # copy unpacked fira code to custom fonts dir
    cp -a "$FIRACODE_DIR"/ttf/*.ttf "$LOCAL_FONTS"

    # copy unpacked meslo to custom fonts dir
    cp -a "$MESLO_DIR"/*.ttf "$LOCAL_FONTS"
)
# catch thrown errors in this block
catch || {
    throw 5
}

echo -e "$BOLD_LIGHT_BLUE\nEND FONTS INSTALL...\n$NO_COLOR"
