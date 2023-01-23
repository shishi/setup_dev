#! /usr/bin/bash

set -ex

sudo add-apt-repository -y ppa:longsleep/golang-backports
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends golang

mkdir -p ~/.local/bin
export GO_BIN=~/.local/bin
export GO_PATH=~/dev

go install github.com/junegunn/fzf@latest
go install github.com/x-motemen/ghq@latest
go install github.com/rhysd/actionlint/cmd/actionlint@latest
go install github.com/lighttiger2505/sqls@latest
