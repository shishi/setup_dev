#! /usr/bin/bash

set -ex

curl -kfsSLO --retry 3 https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
mkdir -p ~/.local/bin
mv ngrok ~/.local/bin/ngrok
rm ngrok-stable-linux-amd64.zip
# ~/.local/bin/ngrok authtoken $TOKEN
