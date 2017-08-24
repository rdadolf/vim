" vi compatibility eliminates some options. we use vim now.
set nocompatible
" Turn line numbers on
set number
" A tab is 2 spaces
set expandtab
set ts=2
set shiftwidth=2

set enc=utf-8

" Turn that damn bell off
" See :help visualbell for more info
:set vb t_vb=

" Word-wrapping
set wrap
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

" File-specific operations
:autocmd BufRead *.txt set textwidth=78
" Word-wrap at 78 char, whenever a whitespace is added, and allow 'gq'
:autocmd BufRead *.txt set formatoptions=tcq
:autocmd BufRead *.txt set nonumber
:autocmd BufRead /tmp/* set textwidth=78
:autocmd BufRead ~/.article.* set nonumber
:autocmd BufRead ~/.article.* set textwidth=78
:autocmd BufRead Makefile* set noexpandtab
:autocmd BufRead makefile* set noexpandtab

" Don't auto-comment or auto-indent
autocmd FileType * setlocal formatoptions-=o formatoptions-=r
:filetype indent off

" Turn on syntax highlighting for all supported filetypes
if has("syntax")
	so ${VIMRUNTIME}/syntax/syntax.vim
endif
" ...and some unsupported ones...
" For Eddie Kohler's tamer language source and header files:
:autocmd BufRead *.tcc set syntax=cpp
:autocmd BufRead *.thh set syntax=cpp

" I prefer a muted color scheme, which basically just highlights comments.
" This must be installed in .vim/colors/none.vim
colorscheme none

" Folding preferences:
" For C files...
:autocmd BufRead *.c set foldmethod=syntax
:autocmd BufRead *.c set foldenable
:autocmd BufRead *.h set foldmethod=syntax
:autocmd BufRead *.h set foldenable
" ...and C++ files...
:autocmd BufRead *.cpp set foldmethod=syntax
:autocmd BufRead *.cpp set foldenable
:autocmd BufRead *.hpp set foldmethod=syntax
:autocmd BufRead *.hpp set foldenable
" ...and CSS files. Boy, how similar...
:autocmd BufRead *.css set foldmethod=syntax
:autocmd BufRead *.css set foldenable
":autocmd BufRead *.css syn sync fromstart

:autocmd BufRead *.py set foldmethod=indent
:autocmd BufRead *.py set foldenable
" By default, folding on indent will ignore (not fold) comment lines (#...).
" I prefer indented comments to be folded with their parents.
:autocmd BufRead *.py set foldignore=


" Use bash for shell commands while in vim
let bash_is_sh = 1
let is_bash = 1

" Sets the character used for auto-completion on the ex command line.
set wildchar=<TAB>

" Don't make the cursor jump back to the first position on the line after a
" page down/page up.
set nostartofline
" Already default, but trying to alleviate ssh problem w/ PageUp/Down
map <PageUp> <C-B>
map <PageDown> <C-F>

" I don't like the z* shortcuts for folding, so I map them to single
" characters on the upper-right of the keyboard.
map - zM
map = zR
map \ zA
map ] zo
map } zO
map [ zc
map { zC

