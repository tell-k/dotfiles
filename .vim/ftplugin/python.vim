" http://d.hatena.ne.jp/shuji_w6e/20090908/1252418641
" http://d.hatena.ne.jp/bellbind/20091109/1257723740

" PEP 8 Indent rule
setl tabstop=8
setl softtabstop=4
setl shiftwidth=4
setl smarttab
setl expandtab
setl autoindent
setl nosmartindent
setl cindent
setl colorcolumn=100

autocmd BufWritePre * :%s/\s\+$//ge "保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\t/ /ge  " 保存時にtabをスペースに変換する

" autocmd BufNewFile,BufRead *.py :call Flake8()

" for jedi.vim
" setlocal completeopt=menuone,longest
" let g:jedi#auto_initialization = 1
" let g:jedi#rename_command = "<leader>R"
" let g:jedi#popup_on_dot = 1
" autocmd FileType python let b:did_ftplugin = 1

" python_fold
" set foldmethod=expr
" set foldexpr=GetPythonFold(v:lnum)
" set foldtext=PythonFoldText()
