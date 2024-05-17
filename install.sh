#!/bin/bash

# script for github codespaces setup

sudo apt-get udpate -y
sudo apt-get install -y vim bash-completion

# install neovim
# https://github.com/neovim/neovim/blob/master/INSTALL.md#appimage-universal-linux-package
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

# update nodejs
# codespaceは最初からnvmが入ってるらしい
# https://stackoverflow.com/a/45384470
source $NVM_DIR/nvm.sh
nvm install --lts

./scripts/remove_symbolic_link.sh
./scripts/create_symbolic_link.sh
