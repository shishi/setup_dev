#! /usr/bin/bash

set -e

curl https://sh.rustup.rs -sSf | sh -s -- -y

mkdir -p ~/.cargo
cp ./files/cargo_config ~/.cargo/config

~/.cargo/bin/rustup component add rust-src rustfmt clippy
~/.cargo/bin/cargo install carto-edit bat exa fd-find selene stylua taplo-cli
