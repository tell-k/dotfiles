. $(cd $(dirname $0) && pwd)/env.sh

if [ ! -d $SCRIPT_PATH/../.vim/bundle/vundle ]; then 
  git clone git://github.com/gmarik/vundle.git $SCRIPT_PATH/../.vim/bundle/vundle
fi 
