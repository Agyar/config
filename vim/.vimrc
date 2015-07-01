"________________________________
" PLUGIN MANAGER

  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#begin()
  " let Vundle manage Vundle
  " required! 
  Plugin 'gmarik/Vundle.vim'

  " My Plugins here:
  "
  " original repos on github
  Plugin 'tpope/vim-fugitive'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 
  " Completion plugins
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'vim-scripts/AutoComplPop'
  Plugin 'ervandew/supertab'
  
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'bling/vim-airline'
  Plugin 'majutsushi/tagbar'

  Plugin 'junegunn/goyo.vim'
  Plugin 'junegunn/limelight.vim'
  "Plugin 'garybernhardt/pycomplexity'
  "Plugin 'airblade/vim-gitgutter'

  " make the cpu burn and vim lags
  "Plugin 'gabrielelana/vim-markdown' 

  Plugin 'Agyar/vim-calzone'
  
  " vim-scripts repos
  Plugin 'L9'
  Plugin 'FuzzyFinder'
 
  " non github repos
  Plugin 'git://git.wincent.com/command-t.git'

  call vundle#end()
"________________________________
" BASIC THINGS

  filetype plugin indent on "set indentation plugin depending on filetype
  syntax on "enable syntax coloring
  colorscheme mushishi "select specific color theme

"________________________________
" SET OPTIONS

  set ai " set auto indent
  "set nu " set number lines on
  set mouse=a " enable mouse in vim
  set ttymouse=xterm2 " enable window resize by mouse when running under tmux/xterm
  set wildmenu " enable completion menu for : commands like :e
  set laststatus=2 " enable second status bar 
  set hlsearch " set highlighted research results
  set pumheight=10 " Set completion menu width to 10
  set backspace=2 " Make Backspace work on EDF computer
  set ignorecase smartcase "ignore case when search is all in lowercase 
  set wildignore=*.obj,*.exe,*.o,*.swp,*.dvi,*.aux,*.pdf "ignore those file extensions when :e 
  set tabstop=2 shiftwidth=2 noexpandtab "Change ridiculous 8-wide tabs
  set scrolloff=10 " Keep a few lines after the current for context
  set showcmd " display incomplete commands
  set incsearch " set incremental search
  set t_Co=256 " setting vim to use 256 colors
  set diffopt+=iwhite " Ignore les espaces pour vimdiff
  set fillchars=vert:\│ " pimp the vertical split character to be a full line
  set confirm " remove use of ! in most cases
  set encoding=utf-8 " let vim encode characters in utf-8
  set expandtab
  set smarttab
  set ofu=syntaxcomplete#Complete
  set completeopt=menuone,menu,longest,preview
  set cinkeys-=0# " force vim to indent #pragma stuff
  set hidden " keep buffers and history instead of closing them when :e
  set infercase " allow for a smatter case sensitive completion
  set nowrapscan " do not loop when searching
  set nobackup " do not store files~ 
  set noswapfile " stop fucking swaping files

"________________________________
" LET OPTIONS

  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
  let g:UltiSnipsUsePythonVersion = 2

  let mapleader="," " set the map leader
  let ttags_display='locations' " can be locations, quickfix, tlib
  let g:snips_author = 'Benjamin Lorendeau' "use for some snipmate completion
  let g:netrw_list_hide= '.*\.swp$,.*\.o$,*\.aux,*\.dvi' "make :Sexplore ignore files like .o and .swp in menu

  let g:airline#extensions#whitespace#enabled = 0
  "let g:airline_inactive_collapse=1
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_alt_sep = ''

  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline#extensions#tabline#right_sep = ''
  let g:airline#extensions#tabline#right_alt_sep = ''

  let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
  let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']

  let g:SuperTabDefaultCompletionType = '<C-Tab>'

  let g:ycm_confirm_extra_conf = 0

  let g:limelight_conceal_ctermfg = 8

  let g:goyo_width = 190

"________________________________
" MAPPINGS
 
  nnoremap <Leader>h :Calzone<CR>
  nnoremap <Leader>g :Goyo<CR>
" easily navigate through tabs with <Tab>
  nnoremap <Tab> :tabnext<CR>
  nnoremap <S-Tab> :tabprevious<CR>

" Search and replace word under cursor using F4
  nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

" same as gqap but needs selection
  vmap T Jgqgq

  cabbr <expr> %% expand('%:p:h')

" allow sudo saving for dumbs
  cmap w!! w !sudo tee % >/dev/null

  nnoremap > 200<C-w>>
  nnoremap < 200<C-w><

" Easy window navigation
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l

  nnoremap <C-z> i$<ESC>ea$<ESC>w
  nnoremap <S-z> i\textbf{<ESC>ea}<ESC>w
  vnoremap <S-z> <Esc>`>a}<Esc>`<i\textbf{<Esc>

" replicate D behavior for yanking
  nnoremap Y y$

" Clear highlight when refreshing.
  nnoremap <C-L> :nohls<CR>:colorscheme mushishi<CR><C-L>
  inoremap <C-L> <C-O>:nohls<CR>

  " open tag in a new tab
  nnoremap <C-Return> <C-w><C-]><C-w>T

" normal mode repetition made easy on azerty keyboard
  noremap ; .
  noremap . ;

"________________________________
" OTHER THINGS

  " Make S-Tab work on EDF computer
  exe 'set t_kB=' . nr2char(27) . '[Z'

  " automatically open and close the popup menu / preview window
  au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

  " pattern recognition of opencl code
  augroup filetype
    au BufWinEnter *.c let w:m2=matchadd('Error', '\%>80v.\+', -1)
    au BufWinEnter *.h let w:m2=matchadd('Error', '\%>80v.\+', -1)
    au BufWinEnter *.cxx let w:m2=matchadd('Error', '\%>80v.\+', -1)
    au BufWinEnter *.cpp let w:m2=matchadd('Error', '\%>80v.\+', -1)
    au BufWinEnter *.hxx let w:m2=matchadd('Error', '\%>80v.\+', -1)
    au BufWinEnter *.hpp let w:m2=matchadd('Error', '\%>80v.\+', -1)
    au BufRead,BufNewFile *.cl  set filetype=opencl
    au BufRead,BufNewFile *.txx set filetype=cpp
    au BufRead,BufNewFile *.tex set tw=80
    au BufRead,BufNewFile *.tex set spell
    au BufRead,BufNewFile *.py  set tabstop=8 expandtab shiftwidth=4 softtabstop=4
  augroup END

let opt_HiIfd=0
fun! ToggleHiIfd()
  if g:opt_HiIfd
    windo syntax clear ifs 
    windo syntax clear ife
  else 
    windo syntax region ifs start="^\s*#ifd" end="#\(else\|endif\)"me=e-6
    windo syntax region ife start="#else" end="#endif"
    "windo hi ifs cterm=reverse term=reverse
    "windo hi ifs ctermbg=1
    windo hi def link ifs DiffChange
    windo hi def link ife Visual
  en
  let g:opt_HiIfd=!g:opt_HiIfd
endfun

let opt_DimInactiveWin=0
hi Inactive ctermbg=7
fun! ToggleDimInactiveWin()
    if g:opt_DimInactiveWin
        autocmd! DimWindows
        windo syntax clear Inactive
    else
        windo syntax region Inactive start='^' end='$'
        syntax clear Inactive
        augroup DimWindows
            autocmd BufEnter * syntax clear Inactive
            autocmd BufLeave * syntax region Inactive start='^' end='$'
        augroup end
    en
    let g:opt_DimInactiveWin=!g:opt_DimInactiveWin
endfun

"autocmd! User GoyoLeave
"autocmd User GoyoLeave nested source /home/ben/.vimrc | silent loadview

function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
  set noshowmode
  set noshowcmd
  set scrolloff=999
  "Limelight
  " easily navigate through buffers instead of tabs with <Tab> 
  " in goyo mode. Mainly to maintain goyo mode.
  nnoremap <Tab> :bnext<CR>
  nnoremap <S-Tab> :bprevious<CR>
endfunction

function! s:goyo_leave()
  set showmode 
  set showcmd 
  set scrolloff=10
  "Limelight! 
  nnoremap <Tab> :tabbnext<CR>
  nnoremap <S-Tab> :tabbprevious<CR>
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang 
      qa!
    else 
      qa 
    endif
  endif
endfunction

autocmd! User GoyoEnter 
autocmd! User GoyoLeave
autocmd User GoyoEnter nested call <SID>goyo_enter()
autocmd User GoyoLeave nested call <SID>goyo_leave()

function! ShowSignColumn()
  sign define dummy
  execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('') 
endfunc 
au BufRead,BufNewFile * call ShowSignColumn()

