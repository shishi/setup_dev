#! /bin/bash

echo "Defaults exempt_group=sudo" | sudo tee -a /etc/sudoers
echo "shishi ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
