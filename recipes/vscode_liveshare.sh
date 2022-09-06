#! /usr/bin/bash

set -ex

sudo apt-get update -qq
curl -fsSL --retry 3 https://aka.ms/vsls-linux-prereq-script -o ~/vsls-reqs
chmod +x ~/vsls-reqs
~/vsls-reqs
rm ~/vsls-reqs

# ubuntu 22.04 don't have libssl 1.1
# curl -fsSL --retry 3 -o http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
# sudo dpkg -i ./libssl1.1_1.1.0g-2ubuntu4_amd64.deb
# rm libssl1.1_1.1.0g-2ubuntu4_amd64.deb
