#! /usr/bin/bash

set -e

packages=("build-essential" "pkg-config" "software-properties-common" "python-is-python3" "python3-venv" "luajit" "luarocks" "gpg")
packages+=("pass" "xsel")
packages+=("git" "curl" "wget" "unzip" "unar" "silversearcher-ag" "vim" "rclone" "jq" "tidy" "protobuf-compiler" "poppler-utils" "poppler-data" "clang-format")
packages+=("mysql-client" "libmysqlclient-dev" "postgresql-client" "libpq-dev" "sqlite3" "libsqlite3-dev" "redis-tools")
packages+=("imagemagick" "libmagickwand-dev")
packages+=("fonts-noto" "fonts-noto-extra" "fonts-noto-mono" "fonts-noto-cjk" "fonts-noto-cjk-extra" "fonts-noto-ui-core" "fonts-noto-ui-extra" "fonts-noto-color-emoji" "fonts-ibm-plex")
set -x

sudo apt-get update -qq
sudo apt-get upgrade -yqq
sudo apt-get install -yqq --no-install-recommends ${packages[*]}

if [ -e /lib/systemd/system/apache2.service ]; then
    sudo systemctl disable apache2
fi
