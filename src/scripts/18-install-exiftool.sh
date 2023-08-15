#!/usr/bin/env bash

# download exiftool latest zipball
curl -C - -L https://codeload.github.com/exiftool/exiftool/zip/refs/heads/master --output "$ROOT$TMP/exiftool.zip"

# got to temporary directory
cd "$ROOT$TMP" || exit 1

# unizip exif tool content
unzip exiftool.zip

# go to the extracted directory
cd exiftool-master || exit 1

# run automated perl compilation
perl Makefile.PL

# test compilation output
make test

# install exiftool
sudo make install
