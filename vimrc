filetype off
call pathogen#infect()
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

set directory=~/.vim/tmp/swap//   " swap files

"Macvim only settings
if has("gui_running")
    set guioptions=-t
    set relativenumber
    set undodir=~/.vim/tmp/undo//     " undo files
    set undofile
    set colorcolumn=85
endif

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1

" Show invisible chars by default
set listchars=tab:▸\ ,eol:¬
set list

inoremap jj <ESC>

au FocusLost * :wa

"Leader Mappings
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>v V`
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<CR>
nnoremap <leader>1 yypVr=
nnoremap <leader>l :set list!<CR>
let g:ctrlp_map = '<leader>,'

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Invisible character colors
highlight NonText guifg=#D9D9D9
highlight SpecialKey guifg=#D9D9D9

set background=dark
colorscheme solarized

" Filetype detection
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.j2 set filetype=html
