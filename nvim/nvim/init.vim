" packloadall
" Load help files for all plugins. »
silent! helptags ALL  
let mapleader="\<space>"
set background=dark
colorscheme gruvbox

set nocompatible              " be iMproved, required
filetype off                  " required
" Activer la coloration syntaxique
syntax enable

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/tpope/vim-commentary'
Plugin 'https://github.com/qxxxb/vim-searchhi'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader = "\<space>"
noremap <leader>f <c-w>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let @p='viw"0p'
let @o='viW"0p'
" disable sending text to register when pasting on sth
vnoremap <leader>p "_dP
