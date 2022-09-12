#! /usr/bin/bash

set -ex

curl -fsSLO --retry 3 https://github.com/x-motemen/ghq/releases/download/v1.3.0/ghq_linux_amd64.zip
unzip ghq_linux_amd64.zip
chmod +x ghq_linux_amd64/ghq
mkdir -p ~/.local/bin
mv ghq_linux_amd64/ghq ~/.local/bin
rm -fr ghq_linux_amd64*
