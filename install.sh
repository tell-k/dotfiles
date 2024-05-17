#!/bin/bash

# script for github codespaces setup

sudo apt-get udpate -y
sudo apt-get install -y neovim vim bash-completion

./scripts/remove_symbolic_link.sh
./scripts/create_symbolic_link.sh
