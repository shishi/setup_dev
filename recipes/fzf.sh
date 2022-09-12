#! /usr/bin/bash

set -ex

curl -fsSLO --retry 3 https://github.com/junegunn/fzf/releases/download/0.33.0/fzf-0.33.0-linux_amd64.tar.gz
tar xvf fzf-0.33.0-linux_amd64.tar.gz
chmod +x ./fzf
mkdir -p ~/.local/bin
mv ./fzf ~/.local/bin
rm -f fzf-0.33.0-linux_amd64.tar.gz
