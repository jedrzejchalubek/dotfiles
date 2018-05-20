" Enable signs columns
set signcolumn=yes

" syntax highlighting
syntax enable
if (has("termguicolors"))
  set termguicolors
endif
colorscheme OceanicNext

hi SignColumn guibg=#343d46 ctermbg=237
hi ALEErrorSign guibg=#ec5f67 ctermbg=203 guifg=#343d46 ctermfg=237
hi ALEWarningSign guibg=#fac863 ctermbg=221 guifg=#343d46 ctermfg=237
hi ALEInfoSign guibg=#ffffff ctermbg=15 guifg=#343d46 ctermfg=237
