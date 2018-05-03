" Set <Leader> key to comma
let mapleader = ','

" Enable incremental live searching and highlighting
set hlsearch
set incsearch
if has('nvim')
  set inccommand = split
endif
