#! /bin/bash

# If HyperV, Admin PowerShell In Windows Host for kvm
# Set-VMProcessor -VMName "VM_NAME" -ExposeVirtualizationExtensions $true

set -ex

export DEBIAN_FRONTEND=noninteractive
cd `dirname $0`

# $Env:VAGRANT_EXPERIMENTAL = "disks"
# vagrant up

# ./recipes/sudo_with_nopassword.sh

# ./recipes/add_vboxsf_group.sh
# ./recipes/wslconf.sh
./recipes/iptables_legacy.sh

./recipes/basic_packages.sh
# ./recipes/virtualbox_guests.sh

./recipes/docker.sh
# ./recipes/docker-compose.sh
./recipes/emacs.sh
./recipes/google_cloud_sdk.sh
# ./recipes/hashicorp.sh
./recipes/inotify.sh
# ./recipes/kvm.sh
./recipes/nodejs.sh
./recipes/golang.sh
./recipes/rustup.sh
# ./recipes/samba.sh
./recipes/vscode_liveshare.sh
./recipes/yarn.sh
./recipes/wslu.sh

./recipes/key.sh
./recipes/dotfiles.sh

./recipes/rbenv.sh
./recipes/golang.sh
./recipes/pip.sh
./recipes/ngrok.sh
./recipes/tailscale.sh

./recipes/fish.sh

# ./recipes/dconf_editor.sh
# ./recipes/fonts.sh
# ./recipes/google_chrome.sh
# ./recipes/ibus_skk.sh
# ./recipes/vivaldi.sh
# ./recipes/vscode.sh

export DEBIAN_FRONTEND=dialog
