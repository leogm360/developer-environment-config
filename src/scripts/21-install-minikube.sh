#!/usr/bin/env bash

# Get minikube package and save it in tmp dir
curl -C - -L https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb --output "$ROOT$TMP"/minikube_latest_amd64.deb

# Install minikube package
sudo dpkg -i "$ROOT$TMP"/minikube_latest_amd64.deb
