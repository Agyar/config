" Vim color file
" Maintainer: David Ne\v{c}as (Yeti) <yeti@physics.muni.cz>
" Last Change: 2003-04-23
" URL: http://trific.ath.cx/Ftp/vim/colors/peachpuff.vim

" This color scheme uses a peachpuff background (what you've expected when it's
" called peachpuff?).
"
" Note: Only GUI colors differ from default, on terminal it's just `light'.

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "peachpuff"

hi Normal guibg=PeachPuff guifg=Black

"hi SpecialKey term=bold ctermfg=4 
hi SpecialKey  ctermbg=0 ctermfg=11
hi NonText term=bold cterm=none ctermfg=0 
hi Directory term=bold ctermfg=4 
hi ErrorMsg term=standout ctermfg=1 ctermbg=0 
hi IncSearch  ctermbg=1 ctermfg=0
hi Search ctermbg=1 ctermfg=0
hi MoreMsg term=bold ctermfg=2 
hi ModeMsg term=bold cterm=bold 
hi Question term=standout ctermfg=2 
"hi VertSplit term=reverse cterm=reverse 
hi Title term=bold ctermfg=5 
hi Visual term=reverse cterm=reverse 
hi VisualNOS term=bold,underline cterm=bold,underline 
hi WarningMsg term=standout ctermfg=1 
hi WildMenu term=standout ctermfg=0 ctermbg=3 
hi Folded term=standout ctermfg=4 ctermbg=0 
hi FoldColumn term=standout ctermfg=4 ctermbg=0
hi DiffAdd term=bold ctermbg=4 
hi DiffChange term=bold ctermbg=5 
hi DiffDelete term=bold cterm=bold ctermfg=4 ctermbg=6 
hi DiffText term=reverse cterm=bold ctermbg=1 

hi ColorColumn ctermbg=8

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
hi StatusLine     ctermbg=7    ctermfg=0   cterm=none
hi StatusLineNC   ctermbg=6  ctermfg=0   cterm=none

hi VertSplit      ctermbg=0  ctermfg=16   cterm=none

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

hi Todo ctermbg=10 ctermfg=0 
hi Readme ctermbg=24 ctermfg=10

hi SignColumn ctermbg=0 ctermfg=0

hi Scotch ctermbg=0 ctermfg=16
hi CS ctermbg=0 ctermfg=18
hi MPI ctermbg=0 ctermfg=21
hi cString ctermbg=0 ctermfg=13
hi STARPU ctermbg=0 ctermfg=10
hi DAGUE  ctermbg=0 ctermfg=12



"hi calzones_if ctermfg=1 ctermbg=1
"hi calzones_else ctermfg=3 ctermbg=3
