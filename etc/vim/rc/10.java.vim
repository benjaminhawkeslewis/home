" -*- Mode: Vimrc; tab-width: 4; indent-tabs-mode: nil; -*-
" vim: filetype=vim

if exists("g:loaded_syntastic_plugin")
    autocmd FileType java SyntasticEnable java
endif

" Strip trailing whitespace on write
autocmd FileType java autocmd BufWritePre <buffer> :%s/\s\+$//e
