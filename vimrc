filetype plugin indent on

let mapleader = ","
let g:mapleader = ","

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Let me switch buffers w/o saving
set hidden
" Show line numbers
set number
" Set indentations
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
" Show syntax highlighting
syntax enable

colorscheme solarized

" Shortcut to open NT
map <leader>t :NERDTreeToggle<CR>

" Close vim if only window is NT
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set width of NT
let g:NERDTreeWinSize = 34 
