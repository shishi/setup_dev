#! /bin/bash

set -ex

sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends ibus-skk
sudo sed -ie "s|<layout>jp</layout>|<layout>us</layout>|g" /usr/share/ibus/component/skk.xml
