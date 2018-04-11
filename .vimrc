imap jk <Esc>
let mapleader=" "

call plug#begin('~/.vim/plugged')
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'valloric/youcompleteme'
"Plug 'vim-latex/vim-latex'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'julialang/julia-vim'
Plug 'oxinabox/julia-vim-completions'
Plug 'hynek/vim-python-pep8-indent'
Plug 'klen/python-mode'
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
Plug 'lervag/vimtex'
Plug 'brennier/quicktex'
Plug 'sedm0784/vim-you-autocorrect'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme one
set background=light

set number
set relativenumber
set encoding=UTF-8

" LaTeX -Suite Options
filetype plugin on
let g:tex_flavor='latex'
filetype indent on
set iskeyword+=:

let g:ycm_semantic_triggers = {
	\ 'tex'  : ['{']
\}

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.

let g:UltiSnipsEditSplit="vertical"


"YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']


set breakindent
