#! /bin/bash

set -ex

sudo apt-get install -yqq --no-install-recommends apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL --retry 3 https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends docker-ce golang-docker-credential-helpers

sudo usermod -aG docker ${USER}
sudo systemctl enable --now docker
