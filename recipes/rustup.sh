#! /usr/bin/bash

set -e

curl https://sh.rustup.rs -sSf | sh -s -- -y

mkdir -p ~/.cargo
cp ./files/cargo_config ~/.cargo/config

~/.cargo/bin/rustup component add rust-src rust-analyzer rustfmt clippy
~/.cargo/bin/cargo install cargo-edit bat eza fd-find ripgrep selene stylua taplo-cli tree-sitter-cli
