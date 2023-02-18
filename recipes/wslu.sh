#! /usr/bin/bash

set -ex

sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends ubuntu-wsl wslu
