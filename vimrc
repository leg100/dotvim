filetype plugin indent on

let mapleader = ","
let g:mapleader = ","

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set number
set tapstop=2 softabstop=0 expandtab shiftwidth=2 smartab
syntax enable

colorscheme solarized
