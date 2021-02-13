#! /bin/bash

set -ex

export DEBIAN_FRONTEND=noninteractive

# If HyperV, Admin PowerShell In Windows Host for kvm
# Set-VMProcessor -VMName "VM_NAME" -ExposeVirtualizationExtensions $true

# $Env:VAGRANT_EXPERIMENTAL = "disks"
# vagrant up

# ./recipes/sudo_with_nopassword.sh
# ./recipes/add_vboxsf_group.sh
# ./recipes/wslconf.sh

./recipes/basic_packages.sh
# ./recipes/virtualbox_guests.sh

./recipes/docker.sh
./recipes/docker-compose.sh

./recipes/emacs.sh
# ./recipes/google_chrome.sh
# ./recipes/vivaldi.sh
./recipes/google_cloud_sdk.sh
# ./recipes/hashicorp.sh
./recipes/inotify.sh
# ./recipes/kvm.sh
./recipes/nodejs.sh
./recipes/samba.sh
./recipes/vscode_liveshare.sh
./recipes/yarn.sh
# ./recipes/ibus_skk.sh

./recipes/key.sh
./recipes/dotfiles.sh

./recipes/rbenv.sh
./recipes/pip.sh
./recipes/ghq.sh
./recipes/ngrok.sh
./recipes/fonts.sh

./recipes/fish.sh

# ./recipes/vscode.sh

export DEBIAN_FRONTEND=dialog
