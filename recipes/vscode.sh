#! /usr/bin/bash

set -ex

curl -fsS --retry 3 https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --batch --yes --dearmor -o /etc/apt/keyrings/vscode.gpg
echo 'deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/vscode.gpg] https://packages.microsoft.com/repos/code stable main' | sudo tee /etc/apt/sources.list.d/vscode.list

sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends code apt-transport-https
