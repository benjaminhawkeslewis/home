" github:benjaminhawkeslewis.com:etc/vim/rc/10.html
" -*- Mode: Vimrc; tab-width: 4; indent-tabs-mode: nil; -*-
"
"       Vim HTML settings.

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

function! HtmlEscape()
  silent s/\%V&/\&amp;/eg
  silent s/\%V</\&lt;/eg
  silent s/\%V>/\&gt;/eg
  silent s/\%V"/\&quot;/eg
  silent s/\%V'/\&#39;/eg
endfunction

function! HtmlUnescape()
  silent s/\%V&amp;/\&/eg
  silent s/\%V&lt;/</eg
  silent s/\%V&gt;/>/eg
  silent s/\%V&quot;/"/eg
  silent s/\%V&#39;/'/eg
endfunction

autocmd FileType html map <silent> <c-h> :call HtmlEscape()<CR>
autocmd FileType html map <silent> <c-u> :call HtmlUnescape()<CR>

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html set expandtab

