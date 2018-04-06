imap jk <Esc>
let mapleader=" "

call plug#begin('~/.vim/plugged')
Plug 'vim-latex/vim-latex'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'julialang/julia-vim'
Plug 'oxinabox/julia-vim-completions'
Plug 'hynek/vim-python-pep8-indent'
Plug 'klen/python-mode'
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
"Plug 'lervag/vimtex'
"Plug 'brennier/quicktex'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme one
set background=light

set number
set relativenumber


" LaTeX -Suite Options
filetype plugin on
let g:tex_flavor='latex'
filetype indent on
set iskeyword+=:
