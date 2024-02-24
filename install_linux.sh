# enable the Universe repo on ubuntu
sudo add-apt-repository universe
# or
# sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"

# install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# install helix
sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix

# install useful LSP servers
# https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers
npm i -g bash-language-server

# install Clangd 12, check for most recent version: https://github.com/clangd/clangd/releases
# note: requires some CMAKE setup that you can look up when you're actually doing c++
# https://clangd.llvm.org/installation.html
sudo apt-get install clang-tools-12
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100


# cmake
pip install cmake-language-server

# docker
npm install -g dockerfile-language-server-nodejs

# dot Graphviz
npm i -g dot-language-server

# graphQL
npm i -g graphql-language-service-cli

# godot...
# just follow the instructions on the link above about helix it also involves changing settings

# html
# json
# CSS
npm i -g vscode-langservers-extracted

# marksman, add if doing more markdown in the future

# sql
npm i -g sql-language-server

# python -- there are other options too but require channging settings. can use together
pip install -U 'python-lsp-server[all]'

# Rust
rustup component add rust-analyzer
# DAP for rust, may require exxtra setup in settings
sudo apt install lldb-15
cd $(dirname $(which lldb-vscode-15))
sudo ln -s lldb-vscode-15 lldb-vscode

# svelte
npm i -g svelte-language-server
# npm i -g typescript-svelte-plugin

# tailwindCSS
npm i -g @tailwindcss/language-server

# toml
cargo install taplo-cli --locked --features lsp

# typescript
npm install -g typescript typescript-language-server

# WGSL
cargo install --git https://github.com/wgsl-analyzer/wgsl-analyzer wgsl_analyzer

# yaml
npm i -g yaml-language-server@next
