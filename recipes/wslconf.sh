#! /usr/bin/bash

set -ex

if [ -e ./files/wsl.conf ]; then
  sudo cp ./files/wsl.conf /etc/
fi
