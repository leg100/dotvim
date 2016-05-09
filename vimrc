filetype plugin indent on

let mapleader = ","
let g:mapleader = ","

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set number
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
syntax enable

colorscheme solarized
