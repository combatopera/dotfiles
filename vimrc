set nobackup
syntax on
match Error /\s\+$\| \+\ze\t/
au BufNewFile,BufRead *.svg setf xml
au BufNewFile,BufRead *.html set syntax=psp
au BufNewFile,BufRead SCons* set syntax=python
au BufNewFile,BufRead *.hs.aridt set syntax=haskell
au BufNewFile,BufRead *.py.aridt set syntax=python
set hlsearch
set tabstop=4
set expandtab
autocmd BufNewFile,BufRead *.s set tabstop=10
autocmd BufNewFile,BufRead *.s set noexpandtab
colorscheme default
set mouse=
