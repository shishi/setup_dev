#! /usr/bin/bash

set -ex

curl -kfsSL --retry 3 https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
rm get-pip.py

~/.local/bin/pip install awscli sqlfluff yamllint beautysh
