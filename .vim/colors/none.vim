" Minimalist Vim color file
" Configured by Bob Adolf.
" Originally copped from Desert.vim by Hans Fugal. Thanks!
"
" Name: none
"   Essentially masks syntax highlighting while leaving it active for other
"   functions (e.g.- syntax folding). Certain exceptions (folding, errors, etc.)
"   are left enabled.
" cterm=None is equivalent to 'set to default'

set background=light
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="none"

" Color exceptions
hi ErrorMsg	 cterm=NONE
hi Folded	 cterm=NONE
hi FoldColumn	 cterm=NONE
hi Comment	 ctermfg=DarkBlue
"hi String  ctermfg=DarkRed

" Masked
hi SpecialKey	 ctermfg=0
hi NonText	 ctermfg=0
hi Directory	 ctermfg=0
hi IncSearch	 ctermfg=0
hi Search	 ctermfg=0
hi MoreMsg	 ctermfg=0
hi ModeMsg	 ctermfg=0
hi LineNr	 ctermfg=0
hi Question	 ctermfg=0
hi StatusLine	 ctermfg=0
hi StatusLineNC ctermfg=0
hi VertSplit	 ctermfg=0
hi Title	 ctermfg=0
hi Visual	 ctermfg=0
hi VisualNOS	 ctermfg=0
hi WarningMsg	 ctermfg=0
hi WildMenu	 ctermfg=0
hi DiffAdd	 ctermfg=0
hi DiffChange	 ctermfg=0
hi DiffDelete	 ctermfg=0
hi DiffText	 ctermfg=0
hi Constant	 ctermfg=0
hi Special	 ctermfg=0
hi Identifier	 ctermfg=0
hi Statement	 ctermfg=0
hi PreProc	 ctermfg=0
hi Type		 ctermfg=0
hi Underlined	 ctermfg=0
hi Ignore	 ctermfg=0
hi Ignore	 ctermfg=0
hi Error	 ctermfg=0



"vim: sw=4
