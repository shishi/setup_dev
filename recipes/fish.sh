#! /bin/bash

set -ex

sudo add-apt-repository -y ppa:fish-shell/release-3
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends fish
echo "exec fish" >> ~/.bashrc

# fisher
# curl -fsSL --retry 3 https://git.io/fisher --create-dirs -sLo  ~/.config/fish/functions/fisher.fish
# fisher
