#! /usr/bin/bash

set -ex

curl -kfsSL --retry 3 https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository -y "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends vagrant virtualbox
