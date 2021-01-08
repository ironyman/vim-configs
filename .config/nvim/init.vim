set shell=/bin/bash
let mapleader = "\<Space>"
nmap <silent> <leader>t :term<CR>

set mouse=a
scriptencoding utf-16      " allow emojis in vimrc
set nocompatible           " vim, not vi
syntax on                  " syntax highlighting
filetype plugin indent on  " try to recognize filetypes and load rel' plugins

set visualbell " visual bell for errors

" text appearance
"set textwidth=80
set nowrap                          " nowrap by default
"set list                            " show invisible characters
"set listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set sts=4 sw=4 ts=4 et

call plug#begin('~/.vim/plugged')
Plug 'ciaranm/securemodelines'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'liuchengxu/vista.vim'
Plug 'rust-lang/rust.vim'
Plug 'kassio/neoterm'
call plug#end()


let g:airline#extensions#tabline#enabled = 1

" runtime coc.vim
runtime vista.vim
runtime fzf.vim
runtime securemode.vim
runtime nvr.vim
