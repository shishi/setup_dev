#! /bin/bash

set -ex

curl -fsSLO https://github.com/x-motemen/ghq/releases/download/v1.1.5/ghq_linux_amd64.zip
unzip ghq_linux_amd64.zip
chmod +x ghq_linux_amd64/ghq
mkdir -p ~/.local/bin
mv ghq_linux_amd64/ghq ~/.local/bin
rm -r ghq_linux_amd64*
