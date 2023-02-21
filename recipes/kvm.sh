#! /usr/bin/bash

set -ex

sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager
sudo systemctl enable --now libvirtd
