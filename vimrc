" ~/.vimrc
set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
    Plug 'VundleVim/Vundle.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ervandew/supertab'
    Plug 'godlygeek/tabular'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'airblade/vim-gitgutter'
    Plug 'alvan/vim-closetag'
    Plug 'triglav/vim-visual-increment'
    Plug 'tpope/vim-surround'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'sirver/UltiSnips'
    Plug 'tpope/vim-fugitive'
    Plug 'aklt/plantuml-syntax'             " syntax hl for puml
    Plug 'tyru/open-browser.vim'            " hooks for opeing browser
    Plug 'weirongxu/plantuml-previewer.vim' " previewer
call plug#end()

" Custom functions
source ~/.vim/functions.vim

" Custom commands
command ClearBuffer silent! execute "%bd|e#|bd#"

" settings _____________________________________________________________
colorscheme monochromicon
syntax on

set expandtab
set number
set noswapfile
set tabstop=4
set laststatus=2
set mousehide
set shiftwidth=4
set updatetime=100
set path+=$PWD/**
set wildignore=**/build/**
set wildmenu
set autoread | au CursorHold * checktime
set splitright
set exrc " Enable for using local/project specific .vimrc files
set tabline=%!MyTabLine()
set ai " Automatic indentation
set nowrap
set nostartofline " Don't move to SOL with the 'gg' or 'G' motions.
set fillchars+=vert:│

let g:tex_flavor = "latex"

:nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
:inoremap jj    <C-c>
:map      <f9>  gT
:map      <f10> gt
:map      <f12> :call ToggleTextwidth()<CR>
:imap     <C-e> <C-o>

" leader key mappings __________________________________________________
let mapleader = " "

:map <leader>hh :set hls!<CR>
:map <leader>tw :call ToggleTextwidth()<CR>
:map <leader>us :UltiSnipsEdit<CR>
:map <leader>sp :set spell!<CR>
:map <leader>n  :bn<CR>
:map <leader>p  :bp<CR>
:map <leader>b  :ClearBuffer<CR>

" Fugitive <leader> mapping --------------------------------------------
:map <leader>gst :G status<CR>
:map <leader>gco :G commit<CR>
:map <leader>gdi :G diff %<CR>
:map <leader>gad :G add %<CR>
:map <leader>gau :G add -u<CR>
:map <leader>gal :G add .<CR>

" supertab ___tw________________________________________________________
let g:SuperTabDefaultCompletionType = "<c-n>"

" airline ______________________________________________________________
let g:airline_theme = 'term'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep          = ''
let g:airline_left_alt_sep      = ''
let g:airline_right_sep         = ''
let g:airline_right_alt_sep     = ''
let g:airline_symbols.branch    = '⎇'
let g:airline_symbols.readonly  = ' '
let g:airline_symbols.linenr    = ' '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty     = ' '
let g:airline_symbols.notexists = ' [!git]'

" closetag _____________________________________________________________
let g:closetag_filenames='*.php,*.html,*.md'

" commands _____________________________________________________________
command! MakeTags !ctags -R .

" autocommands _________________________________________________________
autocmd FileType php set fo+=t
autocmd VimEnter * AirlineToggleWhitespace

" miniSnip _____________________________________________________________
let g:miniSnip_trigger = "<tab>"

" UltiSnips ____________________________________________________________
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<s-tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsEditSplit           = "horizontal"
":call UltiSnips#RefreshSnippets()

" gitgutter ____________________________________________________________
:set signcolumn=yes

" markdown-previewer ---------------------------------------------------
let g:mkdp_preview_options = {
    \ 'disable_sync_scroll': 1,
\}
