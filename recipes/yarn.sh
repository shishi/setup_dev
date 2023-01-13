#! /usr/bin/bash

set -ex

curl -fsSL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarn.gpg
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends yarn
