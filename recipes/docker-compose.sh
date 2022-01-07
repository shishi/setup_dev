#! /bin/bash

set -ex

dir="/usr/local/lib/docker/cli-plugins"
mkdir -p ${dir}
sudo curl -fsSL --retry 3 https://github.com/docker/compose/releases/latest/download/docker-compose-`uname -s`-`uname -m` -o  ${dir}/docker-compose
sudo chmod +x {$dir}/docker-compose
