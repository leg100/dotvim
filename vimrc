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

" NERDTree
map <leader>t :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR>

" Close vim if only window is NT
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set width of NT
let g:NERDTreeWinSize = 34 

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Indent values inside ruby block
map <leader>i virga<space>

" enable builtin matchit plugin
runtime macros/matchit.vim

" necssary for vim-textobj-rubyblock
set nocompatible

" set bindings for running tests
nmap <silent> <leader>n :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" autosave every 200ms
set updatetime=200
autocmd CursorHold,CursorHoldI * update
