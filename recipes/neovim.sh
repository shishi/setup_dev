#! /usr/bin/bash

set -ex

sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends neovim
