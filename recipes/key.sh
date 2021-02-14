#! /bin/bash

set -ex

# WSL
if [ -d /mnt/c/Users/shishi/OneDrive/dev/key ]; then
  cp -fr /mnt/c/Users/shishi/OneDrive/dev/key ~/
# multipass
elif [ -d /home/ubuntu/key ]; then
  sudo cp -fr /home/ubuntu/key ~/
# vagrant
elif [ -d /synced_home/dev/key ]; then
  cp -fr /synced_home/dev/key ~/
# vagrant ver.2
elif [ -d /synced_home/OneDrive/dev/key ]; then
  cp -fr /synced_home/OneDrive/dev/key ~/
# normal virtualbox
elif [ -d /media/sf_shishi/OneDrive/dev/key ]; then
  cp -fr /media/sf_shishi/OneDrive/dev/key ~/
# normal vmware
elif [ -d /mnt/hgfs/shishi/OneDrive/dev/key ]; then
  cp -fr /mnt/hgfs/shishi/OneDrive/dev/key ~/
fi

sudo chown -R ${USER}:${USER} ~/key

cp -fr ~/key/.ssh ~/
sudo chmod 600 ~/.ssh/id_rsa*

gpg --import ~/key/gpg/shishi.pub.gpg
gpg --import --allow-secret-key-import ~/key/gpg/shishi.sub.gpg
