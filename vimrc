" .vimrc
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'alvan/vim-closetag'
Plugin 'triglav/vim-visual-increment'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on

colorscheme monochromicon

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

inoremap jj <C-c>
:map <f9> :make

" supertab _____________________________________________________________
let g:SuperTabDefaultCompletionType = "<c-n>"  "scroll top to bottom"
" ______________________________________________________________________

" airline ______________________________________________________________
let g:airline_theme='term'
