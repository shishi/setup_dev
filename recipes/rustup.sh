#! /bin/bash

set -e

curl https://sh.rustup.rs -sSf | sh -s -- --help

mkdir -p ~/.cargo
cp ./files/cargo_config ~/.cargo/config
