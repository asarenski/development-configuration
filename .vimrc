" GET
"
" package management
" https://github.com/tpope/vim-pathogen
"
" syntax checking on write
" https://github.com/vim-syntastic/syntastic
"
" fuzzy finding
" https://github.com/ctrlpvim/ctrlp.vim
"
" edit and compile ruby in vim
" https://github.com/vim-ruby/vim-ruby
"
" code completion helper
" https://github.com/Valloric/YouCompleteMe
"
" status/tabline helper
" https://github.com/vim-airline/vim-airline
" 
" file navigation
" https://github.com/scrooloose/nerdtree
"

execute pathogen#infect()

set number
set nocompatible    " We're running Vim, not Vi!
filetype on         " Enable filetype detection
filetype plugin indent on    " Enable filetype-specific plugins

syntax enable       " recommended to use syntax enable instead of syntax on
colorscheme molokai

set tabstop=2       " The width of a TAB.
set shiftwidth=2    " The width of Indents.
set softtabstop=2   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.

autocmd FileType ruby compiler ruby

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ctrlp fuzzy finder
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" keyboard shortcut
let mapleader=","
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>w <C-w><C-w>

set noswapfile
