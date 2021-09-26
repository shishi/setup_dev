#! /bin/bash

set -e

packages=("build-essential" "pkg-config" "python-is-python3" "golang")
packages+=("git" "curl" "wget" "unzip"  "silversearcher-ag" "ripgrep" "lv" "vim" "rclone" "fzf")
packages+=("mysql-client" "libmysqlclient-dev" "postgresql-client" "libpq-dev" "sqlite3" "libsqlite3-dev" "redis-tools")
packages+=("imagemagick" "libmagickwand-dev")
packages+=("fonts-noto" "fonts-noto-cjk" "fonts-noto-color-emoji")

set -x

sudo apt-get update -qq
sudo apt-get upgrade -yqq
sudo apt-get install -yqq --no-install-recommends ${packages[*]}

if [ -e /lib/systemd/system/apache2.service ]; then
  sudo systemctl disable apache2
fi
