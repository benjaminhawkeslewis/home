""" Git Commit Message

" Recognise lists when formatting
autocmd FileType gitcommit set formatoptions+=n

" GNU Changelog style bulleted lists AND hanging indented numbered lists:
autocmd FileType gitcommit set formatlistpat=\\v^\\s*(\\ze[*]\\s+\\|\\d+[\\]:\\.\\)}\\t\ ]\\s*)

" Ignore *-style comments in order not to format bulleted lists as comments:
autocmd FileType gitcommit set comments=://,b:#,:%,:XCOMM,n:>,fb:-

" Automatically load diff
autocmd FileType gitcommit DiffGitCached
