#! /usr/bin/bash

set -ex

sudo apt-get update -qq
sudo apt-get install -yqq --no-install-recommends ibus-skk yaskkserv skkdic skkdic-extra

sudo sed -ie "s|<layout>jp</layout>|<layout>us</layout>|g" /usr/share/ibus/component/skk.xml

sudo cp ./files/skk/yaskkserv /etc/default/yaskkserv
sudo systemctl enable yaskkserv
sudo systemctl restart yaskkserv

dconf write /desktop/ibus/engine/skk/dictionaries "['host=localhost,port=1178,type=server', \"file=/home/${USER}/.config/ibus-skk/user.dict,mode=readwrite,type=file\", 'file=/usr/share/skk/SKK-JISYO.L,mode=readonly,type=file']"
dconf write /desktop/ibus/engine/skk/initial-input-mode 3
dconf write /desktop/ibus/engine/skk/egg-like-newline true
dconf write /desktop/ibus/engine/skk/page-size 10
dconf write /desktop/ibus/engine/skk/pagination-start 1

mkdir -p ~/.config/libskk/rules/StickyShift/keymap/
cp ./files/skk/*.json  ~/.config/libskk/rules/StickyShift/keymap/

ibus-daemon -drx
