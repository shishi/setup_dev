#! /usr/bin/bash

set -ex

curl -fsSLO --retry 3 https://github.com/rhysd/actionlint/releases/download/v1.6.17/actionlint_1.6.17_linux_amd64.tar.gz
mkdir -p actionlint
tar xvf actionlint_1.6.17_linux_amd64.tar.gz -C ./actionlint
chmod +x ./actionlint/actionlint
mkdir -p ~/.local/bin
mv ./actionlint/actionlint ~/.local/bin
rm -fr actionlint
