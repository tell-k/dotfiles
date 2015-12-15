
"make php doc
nnoremap <C-H> :call PhpDocSingle()<CR>
vnoremap <C-H> :call PhpDocRange()<CR>

"syntax check
set makeprg=~/.vim/ftplugin/php_check.sh\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

"php options
let php_sql_query = 1
let php_htmlInStrings = 1 
let php_noShortTags = 1

"dictionary and tags
set tags+=~/.vim/tags/pear.tags
set dictionary+=~/.vim/dict/php_func.dict
