#! /bin/bash

if sudo -v &> /dev/null; then
  echo "Defaults exempt_group=sudo" | sudo tee -a /etc/sudoers
  echo "${USER} ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
fi
