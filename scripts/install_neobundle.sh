#!/bin/sh

. $(cd $(dirname $0) && pwd)/env.sh

if [ ! -d $SCRIPT_PATH/../.vim/bundle/neobundle.vim ]; then 
  git clone git://github.com/Shougo/neobundle.vim $SCRIPT_PATH/../.vim/bundle/neobundle.vim
fi 
