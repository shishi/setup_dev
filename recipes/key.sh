#! /usr/bin/bash

set -ex

# WSL
if [ -d /mnt/c/Users/shishi/dev/key ]; then
  cp -fr /mnt/c/Users/shishi/dev/key ~/
# multipass
elif [ -d ~/Home/key ]; then
  sudo cp -fr ~/Home/key ~/
# vagrant (exist not symlinked dev dir)
elif [ -d /synced_home/dev/key ]; then
  cp -fr /synced_home/dev/key ~/
# normal virtualbox
elif [ -d /media/sf_shishi/dev/key ]; then
  cp -fr /media/sf_shishi/dev/key ~/
# normal vmware
elif [ -d /mnt/hgfs/shishi/dev/key ]; then
  cp -fr /mnt/hgfs/shishi/dev/key ~/
fi

sudo chown -R ${USER}:${USER} ~/key

cp -fr ~/key/.ssh ~/
sudo chmod 600 ~/.ssh/id_rsa*

gpg --import --allow-secret-key-import ~/key/gpg/shishi.sec_sub.gpg
gpg --import-ownertrust ~/key/gpg/shishi.ownertrust
gpg --import --allow-secret-key-import ~/key/gpg/shishisn.sec_sub.gpg

echo '# use-keyboxd' > ~/.gnupg/common.conf

pass init shishi@srevo.net

