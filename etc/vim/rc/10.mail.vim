" github:benjaminhawkeslewis.com:etc/vim/rc/10.mail
" -*- Mode: Vimrc; tab-width: 4; indent-tabs-mode: nil; -*-
"
"       Vim mail settings.

autocmd FileType mail set textwidth=68

" Pattern to recognize as a list header
"autocmd FileType mail set formatlistpat="^\s*\d\+[\]:.)}\t ]\s*"

" When formatting text, recognize numbered and bulleted lists.
autocmd FileType mail set formatoptions+=n
autocmd FileType mail set comments=n:>,fb:-,fb:* 

" Check spelling
autocmd FileType mail setlocal spell spelllang=en_us
