#! /bin/bash

set -ex

curl -fsS https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update -yqq
sudo apt-get install -yqq --no-install-recommends google-chrome-stable
