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

" show vertical line after 80 chars
set colorcolumn=80

colorscheme 3dglasses

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


" show leading tabs
set list
set listchars=tab:>-

" tell vim-ack to use ag bin for searching
let g:ackprg = 'ag --vimgrep'

" shortcut to enable/disable paste mode
set pastetoggle=<leader>p

" autoindent python files
au BufRead,BufNewFile *.py setl sts=4 sw=4 et
