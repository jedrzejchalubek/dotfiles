" ============================================================
" Enable signs columns
" ============================================================
set signcolumn=yes

" ============================================================
" Give more space for displaying messages.
" ============================================================
set cmdheight=2

" ============================================================
" Don't pass messages to |ins-completion-menu|.
" ============================================================
set shortmess+=c

" ============================================================
" Enable indentation
" ident by an additional 2 characters on wrapped lines, when line >= 40 characters, put 'showbreak' at start of line
" ============================================================
set breakindent
set breakindentopt=shift:2,min:80,sbr

" ============================================================
" Enable syntax highlighting
" ============================================================
syntax enable
if (has("termguicolors"))
  set termguicolors
endif
colorscheme OceanicNext

" ============================================================
" Setup highlighting colors
" ============================================================
hi SignColumn guibg=#343d46 ctermbg=237
hi ALEErrorSign guibg=#ec5f67 ctermbg=203 guifg=#343d46 ctermfg=237
hi ALEWarningSign guibg=#fac863 ctermbg=221 guifg=#343d46 ctermfg=237
hi ALEInfoSign guibg=#ffffff ctermbg=15 guifg=#343d46 ctermfg=237
