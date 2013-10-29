"________________________________
" PLUGIN MANAGER

  "call pathogen#infect()
  "call pathogen#helptags()

  filetype off
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  " let Vundle manage Vundle
  " required! 
  Bundle 'gmarik/vundle'

  " My Bundles here:
  "
  " original repos on github
  Bundle 'tpope/vim-fugitive'
  Bundle 'Lokaltog/vim-easymotion'
  Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
  "Bundle 'tpope/vim-rails.git'
  "Bundle 'Valloric/YouCompleteMe'
  Bundle 'justmao945/vim-clang'
  Bundle 'SirVer/ultisnips'
  Bundle 'ervandew/supertab'
  Bundle 'scrooloose/nerdcommenter'
  " vim-scripts repos
  Bundle 'L9'
  Bundle 'FuzzyFinder'
  " non github repos
  Bundle 'git://git.wincent.com/command-t.git'
"________________________________
" BASIC THINGS

  filetype plugin indent on "set indentation plugin depending on filetype
  syntax on "enable syntax coloring
  colorscheme mushishi "select specific color theme

"________________________________
" SET OPTIONS

  set ai " set auto indent
  set nu " set number lines on
  set mouse=a " enable mouse in vim
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

"________________________________
" LET OPTIONS

  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
  let g:UltiSnipsUsePythonVersion = 2

  let mapleader="," " set the map leader
  let ttags_display='locations' " can be locations, quickfix, tlib
  let g:snips_author = 'Benjamin Lorendeau' "use for some snipmate completion
"let g:acp_enableAtStartup = 0
  let g:netrw_list_hide= '.*\.swp$,.*\.o$,*\.aux,*\.dvi' "make :Sexplore ignore files like .o and .swp in menu
" Clang completion specific options
  "let g:clang_use_library=1 "let clang use the library instead of the bin, making it faster
  "let g:clang_library_path="/home/C26973/Software/Clang/lib/" "set the clang library path
  "let g:clang_complete_copen=1 "used to show clang errors in the quickfix window, aimed to be used with :ClangCheck
  "let g:clang_user_options='|| exit 0' "might be needed to get it working
  "let g:clang_complete_auto=1 "let completion being poped out automatically
  "let g:clang_hl_errors=1 "let vim highlight errors detected by clang, doesn't seem to work anyway

  "let g:airline_theme='powerlineish'
  "let g:airline_detect_whitespace=0
  "let g:airline_inactive_collapse=1
  "let g:airline_left_sep = ''
  "let g:airline_right_sep = ''

"________________________________
" MAPPINGS

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
  nnoremap <C-L> :nohls<CR><C-L>
  inoremap <C-L> <C-O>:nohls<CR>

"________________________________
" OTHER THINGS

  " Make S-Tab work on EDF computer
  exe 'set t_kB=' . nr2char(27) . '[Z'

  " automatically open and close the popup menu / preview window
  au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

  " pattern recognition of opencl code
  augroup filetype
    au BufRead,BufNewFile *.cl  set filetype=opencl
    au BufRead,BufNewFile *.txx set filetype=cpp
    au BufRead,BufNewFile *.tex set tw=80
    au BufRead,BufNewFile *.tex set spell
  augroup END

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
