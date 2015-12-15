#!/bin/sh

. $(cd $(dirname $0) && pwd)/env.sh

ln -fs $SCRIPT_PATH/../.vim/  ~/
ln -fs $SCRIPT_PATH/../.vimrc ~/
ln -fs $SCRIPT_PATH/../.vimrc.d/ ~/
ln -fs $SCRIPT_PATH/../.screenrc ~/
ln -fs $SCRIPT_PATH/../.gitconfig ~/.
ln -fs $SCRIPT_PATH/../.hgrc ~/
ln -fs $SCRIPT_PATH/../.hgrc.d/ ~/
ln -fs $SCRIPT_PATH/../.bashrc ~/
ln -fs $SCRIPT_PATH/../.bash_profile ~/
ln -fs $SCRIPT_PATH/../.bashrc.d/ ~/
ln -fs $SCRIPT_PATH/../.tmux.conf ~/
ln -fs $SCRIPT_PATH/../.inputrc ~/
ln -fs $SCRIPT_PATH/../.pythonstartup.py ~/
ln -fs $SCRIPT_PATH/switch_vim.sh ~/

mkdir -p ~/.config
ln -fs $SCRIPT_PATH/../.config/peco ~/.config/

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
