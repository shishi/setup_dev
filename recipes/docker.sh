#! /usr/bin/bash

set -ex

sudo apt-get install -yqq --no-install-recommends ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -kfsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --batch --yes --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends docker-ce docker-ce-cli containerd.io docker-compose-plugin golang-docker-credential-helpers

sudo usermod -aG docker ${USER}
sudo systemctl enable --now docker
