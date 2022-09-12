#! /usr/bin/bash

set -ex

curl -fsSLO --retry 3 https://github.com/b4b4r07/gomi/releases/download/v1.1.3/gomi_linux_x86_64.tar.gz
mkdir -p gomi
tar xvf gomi_linux_x86_64.tar.gz -C ./gomi
chmod +x ./gomi/gomi
mkdir -p ~/.local/bin
mv ./gomi/gomi ~/.local/bin
rm -rf gomi_linux_x86_64.tar.gz ./gomi
