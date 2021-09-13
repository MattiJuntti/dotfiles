" .vimrc
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
    Plug 'iamcco/markdown-preview.nvim'
call plug#end()

filetype plugin indent on

colorscheme monochromicon

" settings _____________________________________________________________
syntax on
set expandtab
set number
set noswapfile
set tabstop=4
set laststatus=2
set mousehide
set cursorline
set shiftwidth=4
set updatetime=100
set path+=$PWD/**
set autoread | au CursorHold * checktime

:nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
:inoremap jj <C-c>
:map <f9> :make

" supertab _____________________________________________________________
let g:SuperTabDefaultCompletionType = "<c-n>"

" airline ______________________________________________________________
let g:airline_theme='term'

" closetag _____________________________________________________________
let g:closetag_filenames='*.php,*.html,*.md'

" autocommands _________________________________________________________
autocmd FileType php set fo+=t
autocmd VimEnter * AirlineToggleWhitespace
