#! /bin/bash

set -ex

curl -fsS https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository -y 'deb https://repo.vivaldi.com/archive/deb/ stable main'
sudo apt-get update -yqq
sudo apt-get install -yqq --no-install-recommends vivaldi-stable
