#! /bin/bash

set -ex

if [ -e /mnt/z/save/_conf/win/wsl.conf ]; then
  sudo cp /mnt/z/save/_conf/win/wsl.conf /etc/
fi
