#!/usr/bin/env bash

cd ../temp || echo 'ERROR IN CHANGING DIRECTORIES'

curl -C - -O -L https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-linux-x86_64.tgz

tar -xf ookla-speedtest-1.1.1-linux-x86_64.tgz

sudo cp ./speedtest /bin

sudo rm -rf ./*
