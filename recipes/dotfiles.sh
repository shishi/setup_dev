#! /bin/bash

# already ssh keys installed

set -ex

if [ ! -d ~/dev/src/github.com/shishi/dotfiles ]; then
  mkdir -p ~/dev/src/github.com/shishi/
  GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git clone git@github.com:shishi/dotfiles.git ~/dev/src/github.com/shishi/dotfiles
elif [ -d ~/dev/src/github.com/shishi/dotfiles ]; then
  GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git -C ~/dev/src/github.com/shishi/dotfiles pull
fi

~/dev/src/github.com/shishi/dotfiles/setup.sh
