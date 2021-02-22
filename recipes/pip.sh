#! /bin/bash

set -ex

curl -fsSL --retry 3 https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
rm get-pip.py

~/.local/bin/pip install awscli python-openstackclient
