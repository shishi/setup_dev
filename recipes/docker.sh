#! /usr/bin/bash

set -ex

sudo apt-get install -yqq --no-install-recommends ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --batch --yes --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-buildx-plugin golang-docker-credential-helpers qemu-user-static

sudo usermod -aG docker ${USER}
sudo systemctl enable --now docker
sudo systemctl stop docker

sudo mkdir -p /etc/systemd/system/docker.service.d
sudo rm -f /etc/systemd/system/docker.service.d/override.conf
sudo touch /etc/systemd/system/docker.service.d/override.conf
cat << EOF | sudo tee /etc/systemd/system/docker.service.d/override.conf
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// -H tcp://0.0.0.0:2375
EOF

sudo systemctl daemon-reload
sudo systemctl start docker
