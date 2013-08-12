" -*- Mode: Vimrc; tab-width: 4; indent-tabs-mode: nil; -*-
" vim: filetype=vim
" Non-manual fold methods seem to cause Vim to slow down
autocmd FileType php set foldmethod=manual
autocmd FileType php set foldlevel=2

if exists("g:loaded_syntastic_plugin")
    autocmd FileType php SyntasticEnable php
endif

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" http://bjori.blogspot.com/2010/01/unix-manual-pages-for-php-functions.html
" https://github.com/berkes/vim-pman
" Press K on PHP builtins
" autocmd FileType php set keywordprg=pman

" Strip trailing whitespace on write
autocmd FileType php autocmd BufWritePre <buffer> :%s/\s\+$//e
" Syntax check via make
autocmd FileType php set makeprg=php\ -derror_reporting=-1\ -ddisplay_errors=1\ -l\ %
autocmd FileType php set errorformat=%m\ in\ %f\ on\ line\ %l,%-GErrors\ parsing\ %f,%-G

let php_htmlInStrings = 1
let php_folding = 1


