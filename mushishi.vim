" Vim color file
" Maintainer: Benjamin Lorendeau 
" Last Change: 2013-12-13
" URL: http://trific.ath.cx/Ftp/vim/colors/peachpuff.vim

" Note: No GUI color. Based on peachpuff colorscheme

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "mushishi"

hi SpecialKey term=bold ctermfg=4 
hi NonText term=bold cterm=bold ctermfg=4 
hi Directory term=bold ctermfg=4 
hi ErrorMsg term=standout ctermfg=1 ctermbg=0 

hi IncSearch  cterm=reverse
hi Search ctermbg=1 ctermfg=0
hi MoreMsg term=bold ctermfg=2 
hi ModeMsg term=bold cterm=bold 
hi Question term=standout ctermfg=2 
hi VertSplit term=reverse cterm=reverse 
hi Title term=bold ctermfg=5 
hi Visual term=reverse cterm=reverse 
hi VisualNOS term=bold,underline cterm=bold,underline 
hi WarningMsg term=standout ctermfg=1 
hi WildMenu term=standout ctermfg=0 ctermbg=3 
hi Folded term=standout ctermfg=4 ctermbg=7 
hi FoldColumn term=standout ctermfg=4 ctermbg=7 

hi DiffAdd term=none cterm=none ctermbg=6 ctermfg=7
hi DiffDelete term=none cterm=none ctermfg=0 ctermbg=0
hi DiffChange term=none cterm=none ctermbg=5 ctermfg=7
hi DiffText term=none cterm=none ctermbg=7 ctermfg=0

" Colors for syntax highlighting
hi Comment  ctermfg=8
hi Constant term=underline ctermfg=1 
hi Special term=bold ctermfg=5 
hi Identifier term=underline ctermfg=6 
hi Statement term=bold ctermfg=3 
hi PreProc term=underline ctermfg=5 
hi Type term=underline ctermfg=2 
hi Ignore cterm=bold ctermfg=7 
hi Error term=reverse cterm=bold ctermfg=7 ctermbg=1 

" -> Tabs
hi TabLine        ctermbg=6  ctermfg=0   cterm=none
hi TabLineFill    ctermbg=6                  cterm=none
hi TabLineSel     ctermbg=7  ctermfg=0   cterm=none 

" -> Line info  
hi LineNr term=underline ctermfg=8 
" Not Working and that's too bad :(
hi CursorLineNr   ctermbg=6 cterm=reverse
hi StatusLine     ctermbg=7    ctermfg=0   cterm=none
hi StatusLineNC   ctermbg=6  ctermfg=0   cterm=none

"hi CursorLine     cterm=reverse

hi VertSplit      ctermbg=0  ctermfg=6   cterm=none

" -> Menu
hi Pmenu          ctermbg=6    ctermfg=0    cterm=none
hi PmenuSel       ctermbg=7  ctermfg=0    cterm=none
hi PmenuSbar      ctermbg=6                 cterm=none
hi PmenuThumb     ctermbg=52                 cterm=none
hi PmenuSel       ctermbg=7  ctermfg=0    cterm=none

" -> Visual Mode
hi Visual         ctermbg=4    ctermfg=0   cterm=none 
hi VisualNOS      ctermbg=4    ctermfg=0   cterm=none

hi PreProc        ctermbg=0  ctermfg=4   cterm=none

hi WildMenu ctermbg=6 ctermfg=0

hi SpellBad cterm=underline ctermfg=15  ctermbg=0
hi SpellCap cterm=underline ctermfg=15  ctermbg=0
hi SpellRare cterm=underline ctermfg=15  ctermbg=0
hi SpellLocal cterm=underline ctermfg=15  ctermbg=0

hi Todo ctermbg=2 ctermfg=0 
hi Function ctermfg=6 ctermbg=0
