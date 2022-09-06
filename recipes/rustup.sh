#! /usr/bin/bash

set -e

curl https://sh.rustup.rs -sSf | sh -s -- -y

mkdir -p ~/.cargo
cp ./files/cargo_config ~/.cargo/config

# rustup component add rust-src rustfmt clippy
