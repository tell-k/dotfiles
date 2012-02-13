. $(cd $(dirname $0) && pwd)/env.sh

perl $SCRIPT_PATH/dict.pl > $SCRIPT_PATH/../.vim/dict/perl_func.dict 
