
"syntax check
set makeprg=~/.vim/ftplugin/python_check.sh\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

"http://d.hatena.ne.jp/shuji_w6e/20090908/1252418641
"http://d.hatena.ne.jp/bellbind/20091109/1257723740
"
"setl autoindent
"setl noautoindent
"setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"setl expandtab
"setl tabstop=4
"setl shiftwidth=4
"setl softtabstop=4

" PEP 8 Indent rule
setl tabstop=8
setl softtabstop=4
setl shiftwidth=4
setl smarttab
setl expandtab
setl autoindent
setl nosmartindent
setl cindent
" setl textwidth=80
setl colorcolumn=100

"保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge
"保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/ /ge
"autocmd BufNewFile,BufRead *.py :call Flake8()

let g:jedi#auto_initialization = 1
"let g:jedi#rename_command = "<leader>R"
let g:jedi#popup_on_dot = 1
"autocmd FileType python let b:did_ftplugin = 1

" python_fold
"set foldmethod=expr
"set foldexpr=GetPythonFold(v:lnum)
"set foldtext=PythonFoldText()
"
" pydiction
" set omnifunc=pythoncomplete
" let g:pydiction_location = '~/.vim/dict/complete-dict'
