" Enable latest Vim options and settings
set nocompatible

" Set <Leader> key to comma
let mapleader=','

" Use indents of 4 spaces
set shiftwidth=2

" Expand tabs to spaces
set expandtab

" An indentation every four columns
set tabstop=2

" Let backspace delete indent
set softtabstop=2

" Enable auto indentation
set autoindent
filetype plugin indent on

" Use the /g flag on :s substitutions by default
set gdefault

" Enable incremental live searching and highlighting
set hlsearch
set incsearch
if has('nvim')
  set inccommand=split
endif
