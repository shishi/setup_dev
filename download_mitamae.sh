#! /bin/bash

mkdir -p /home/shishi/.local/bin
curl -L https://github.com/itamae-kitchen/mitamae/releases/latest/download/mitamae-x86_64-linux.tar.gz | tar xvz
mv ./mitamae-x86_64-linux /home/shishi/.local/bin/mitamae
