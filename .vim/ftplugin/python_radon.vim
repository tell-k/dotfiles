"=========================================================
" File:        python_radon.vim
" Author:      tell-k <ffk2005[at]gmail.com>
" Last Change: 12-Oct-2014.
" Version:     1.0.0
" WebPage:     https://github.com/tell-k/vim-radon
" License:     MIT Licence
"==========================================================
" see also README.rst

" Only do this when not done yet for this buffer
if exists("b:loaded_radon_ftplugin")
   finish
endif
let b:loaded_radon_ftplugin=1
let s:radon_current_buffer=''

if !exists("*RadonCC()")

    function JumpToLine()
        let line=getline('.')
        let words=split(line, " ")
        let line_pos=split(words[1], ":")
        silent execute bufwinnr(s:radon_current_buffer=bufnr).'wincmd w'
        silent execute ':normal ' . line_pos[0] . 'gg'
    endfunction

    function RadonCC()
        let s:radon_current_buffer=bufnr("%")
        if exists("g:radon_cmd")
            let s:radon_cmd=g:radon_cmd
        else
            let s:radon_cmd="radon"
        endif

        if !executable(s:radon_cmd)
            echoerr "File " . s:radon_cmd . " not found. Please install it first."
            return
        endif

        set lazyredraw   " delay redrawing
        "close "radoncc"

        " store old grep settings (to restore later)
        let l:old_gfm=&grepformat
        let l:old_gp=&grepprg

        " write any changes before continuing
        if &readonly == 0
            update
        endif

        " restore grep settings
        let &grepformat=l:old_gfm
        let &grepprg=l:old_gp

        let target_file = expand('%:p')
        botright new radoncc
        setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
        silent execute '$read !radon cc ' . target_file
        setlocal wrap
        setlocal filetype=stdin
        silent execute ':normal gg2dd'
        silent execute ':%s/^    //g'
        silent execute ':noh'
        setlocal nomodifiable
        syntax match Constant /-\sA/
        syntax match SpecialKey /-\sB/
        syntax match Number /-\sC/
        set nolazyredraw
        redraw!

        " Show OK status
        "hi Green ctermfg=green
        "echohl Green
        "echon "Radon check OK"
        "echohl
        "
        noremap <buffer> <Enter> :call JumpToLine()<CR>

    endfunction
endif

" Add mappings, unlESS THE USER DIDN'T WANT THIS.
" The default mapping is registered under to <F9> by default, unless the user
" remapped it already (or a mapping exists already for <F9>)
if !exists("no_plugin_maps") && !exists("no_radon_maps")
    if !hasmapto('RadonCC(')
        noremap <buffer> <F6> :call RadonCC()<CR>
        command! -bar RadonCC call RadonCC() 
    endif
endif
