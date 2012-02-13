. $(cd $(dirname $0) && pwd)/env.sh

php $SCRIPT_PATH/dict.php > $SCRIPT_PATH/../.vim/dict/php_func.dict 

case "${OSTYPE}" in
darwin*)
    ctags -f $SCRIPT_PATH/../.vim/tags/php_pear.tags --langmap=PHP:.php.inc --php-types=c+f `find /usr/lib/php/ -name '*.php' -or -name '*.inc'`
    ;;
linux*)
    ctags -f $SCRIPT_PATH/../.vim/tags/php_pear.tags --langmap=PHP:.php.inc --php-types=c+f `find /usr/share/pear/ -name '*.php' -or -name '*.inc'` 
    ;;
esac

