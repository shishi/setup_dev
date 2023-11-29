#! /usr/bin/bash

set -ex

sudo curl -fsSL --retry 3 https://deb.nodesource.com/setup_lts.x | sudo bash -
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends nodejs

npm --prefix ~/.local/ install -g typescript prettier eslint eslint-config-prettier eslint-plugin-react eslint-plugin-react-hooks stylelint stylelint-config-standard sql-formatter @vtsls/language-server
