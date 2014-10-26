#!/bin/sh

. $(cd $(dirname $0) && pwd)/env.sh

ln -fs $SCRIPT_PATH/../.vim/  ~/.vim
ln -fs $SCRIPT_PATH/../.vimrc ~/.vimrc
ln -fs $SCRIPT_PATH/../.vimrc.d/ ~/.vimrc.d
ln -fs $SCRIPT_PATH/../.screenrc ~/.screenrc
ln -fs $SCRIPT_PATH/../.gitconfig ~/.gitconfig
ln -fs $SCRIPT_PATH/../.hgrc ~/.hgrc
ln -fs $SCRIPT_PATH/../.hgrc.d/ ~/.hgrc.d
ln -fs $SCRIPT_PATH/../.bashrc ~/.bashrc
ln -fs $SCRIPT_PATH/../.bash_profile ~/.bash_profile
ln -fs $SCRIPT_PATH/../.bashrc.d/ ~/.bashrc.d
ln -fs $SCRIPT_PATH/../.tmux.conf ~/.tmux.conf
ln -fs $SCRIPT_PATH/../.inputrc ~/.inputrc
ln -fs $SCRIPT_PATH/../.pythonstartup.py ~/.pythonstartup.py

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
