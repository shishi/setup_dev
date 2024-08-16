#! /usr/bin/bash

set -ex

sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends emacs

#arch=$(uname -i)
#
#if [[ $arch == x86_64* ]]; then
##    echo "X64 Architecture"
#    sudo add-apt-repository -y ppa:kelleyk/emacs
#    sudo apt-get update -qq
#    sudo apt-get install -yqq --no-install-recommends emacs
#elif [[ $arch == i*86 ]]; then
##    echo "X32 Architecture"
#    sudo apt-get install -yqq --no-install-recommends emacs-nox
#elif  [[ $arch == arm* ]] || [[ $arch = aarch64 ]]; then
##    echo "ARM Architecture"
#    sudo apt-get install -yqq --no-install-recommends emacs-nox
#fi
