#! /usr/bin/bash

set -ex

sudo add-apt-repository -y ppa:longsleep/golang-backports
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends golang

mkdir -p ${HOME}/.local/bin
export GOBIN=${HOME}/.local/bin

go install github.com/junegunn/fzf@latest
# go install github.com/lighttiger2505/sqls@latest
go install github.com/mattn/efm-langserver@latest
go install github.com/rhysd/actionlint/cmd/actionlint@latest
go install github.com/x-motemen/ghq@latest
go install github.com/yoheimuta/protolint/cmd/protolint@latest
go install golang.org/x/tools/cmd/goimports@latest
go install golang.org/x/tools/gopls@latest
# go install github.com/lemonade-command/lemonade@latest
