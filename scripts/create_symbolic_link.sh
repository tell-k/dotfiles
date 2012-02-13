#!/bin/sh

CURRENT_PATH=$(cd $(dirname $0) && pwd)

ln -fs $CURRENT_PATH/../.vim/  ~/.vim
ln -fs $CURRENT_PATH/../.vimrc ~/.vimrc
ln -fs $CURRENT_PATH/../.vimrc.d/ ~/.vimrc.d
ln -fs $CURRENT_PATH/../.screenrc ~/.screenrc
ln -fs $CURRENT_PATH/../.gitconfig ~/.gitconfig
ln -fs $CURRENT_PATH/../.hgrc ~/.hgrc
ln -fs $CURRENT_PATH/../.hgrc.d/ ~/.hgrc.d
ln -fs $CURRENT_PATH/../.bashrc ~/.bashrc
ln -fs $CURRENT_PATH/../.bashrc.d/ ~/.bashrc.d
ln -fs $CURRENT_PATH/../.tmux.conf ~/.tmux.conf
ln -fs $CURRENT_PATH/../.inputrc ~/.inputrc
ln -fs $CURRENT_PATH/../.pythonstartup.py ~/.pythonstartup.py

[ ! -d ~/.dotfiles_private/ ] && mkdir ~/.dotfiles_private
touch ~/.dotfiles_private/.bashrc
touch ~/.dotfiles_private/.vimrc
touch ~/.dotfiles_private/.screenrc
touch ~/.dotfiles_private/.hgrc

[ ! -d ~/.dotfiles_local/ ] && mkdir ~/.dotfiles_local
touch ~/.dotfiles_local/.bashrc
touch ~/.dotfiles_local/.vimrc
touch ~/.dotfiles_local/.screenrc
touch ~/.dotfiles_local/.hgrc

source ~/.bashrc
