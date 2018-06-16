imap jk <Esc>
let mapleader=" "
let maplocalleader=" "

call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'julialang/julia-vim'
"Plug 'oxinabox/julia-vim-completions'
"Plug 'hynek/vim-python-pep8-indent'
"Plug 'klen/python-mode'
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
Plug 'lervag/vimtex'
"Plug 'brennier/quicktex'
"Plug 'AtsushiSakai/julia.vim'

"Plug 'sedm0784/vim-you-autocorrect'
call plug#end()

nnoremap j gj
nnoremap k gk

set termguicolors
colorscheme one
set background=dark

set nocompatible
filetype indent plugin on
syntax on
set cursorline 
set breakindent
set wrap
set textwidth=80
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set relativenumber
set encoding=UTF-8
set hlsearch
set incsearch
" Quick jumping between splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Open new splits easily
map vv <C-W>v
map ss <C-W>s
map Q <C-W>

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup


" NERD Tree
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=1
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeDirArrows = 1
"let NERDTreeMinimalUI=1

" VIMTEX
let g:tex_flavor = 'latex'
if empty(v:servername) && exists('*remote_startserver')
        call remote_startserver('VIM')
endif
