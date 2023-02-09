#! /usr/bin/bash

set -ex

sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends samba
echo "
[dev]
  path = /home/${USER}/dev
  writable = yes
  browseable = yes
  # public = yes
  force create mode = 644
  force directory mode = 755
  force user = ${USER}
" | sudo tee -a /etc/samba/smb.conf
sudo systemctl restart smbd
