#! /bin/bash

set -ex

sudo curl -fsSL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends nodejs