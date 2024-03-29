#! /usr/bin/bash

set -ex

curl -fsS --retry 3 https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --batch --yes --dearmor -o /etc/apt/keyrings/google-chrome.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends google-chrome-stable
