setl tabstop=4
setl softtabstop=2
setl shiftwidth=2
setl smarttab
setl expandtab
"setl autoindent
setl nosmartindent
setl cindent

"保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge
"保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/ /ge
