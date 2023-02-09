#! /usr/bin/bash

set -ex

curl -fsS --retry 3 https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --batch --yes --dearmor -o /etc/apt/keyrings/edge.gpg
echo 'deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/edge.gpg] https://packages.microsoft.com/repos/edge stable main' | sudo tee /etc/apt/sources.list.d/edge.list

sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends microsoft-edge-stable
