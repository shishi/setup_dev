#! /bin/bash

set -ex

if [ ! -d ~/.rbenv ]; then
  sudo apt-get update -yqq
  sudo apt-get install -yqq --no-install-recommends autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
  GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  echo export PATH='$HOME/.rbenv/bin:$PATH' >> ~/.profile
elif [ -d ~/.rbenv ]; then
  GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git -C ~/.rbenv pull
fi

if [ ! ~/.rbenv/plugins/ruby-build ]; then
  mkdir -p ~/.rbenv/plugins
  GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
elif [ -d ~/.rbenv/plugins/ruby-build ]; then
  GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git -C ~/.rbenv/plugins/ruby-build pull
fi

~/.rbenv/src/configure
make -C ~/.rbenv/src

~/.rbenv/bin/rbenv install --skip-existing 3.0.0
~/.rbenv/bin/rbenv global 3.0.0

