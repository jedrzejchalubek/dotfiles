set nocompatible

" Set <Leader> key to comma
let mapleader=','

" Use the /g flag on :s substitutions by default
set gdefault

" Enable incremental live searching and highlighting
set hlsearch
set incsearch
if has('nvim')
  set inccommand=split
endif
