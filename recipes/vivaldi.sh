#! /usr/bin/bash

set -ex

curl -fsS --retry 3 https://repo.vivaldi.com/archive/linux_signing_key.pub  | sudo gpg --batch --yes --dearmor -o /etc/apt/keyrings/vivaldi.gpg
echo 'deb https://repo.vivaldi.com/archive/deb/ stable main' >> /etc/apt/sources.list.d/vivaldi.list
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends vivaldi-stable
