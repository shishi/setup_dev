#! /bin/bash

set -ex

sudo apt-get update -qq
curl -fsSL --retry 3 https://aka.ms/vsls-linux-prereq-script -o ~/vsls-reqs
chmod +x ~/vsls-reqs
~/vsls-reqs
rm ~/vsls-reqs
