" jeffkreeftmeijer/vim-numbertoggle
set number relativenumber

" mattn/emmet-vim
augroup emmet
  au!
  let g:user_emmet_install_global = 0
  autocmd FileType html,css,sass,scss EmmetInstall
  autocmd FileType html,css,sass,scss imap <buffer> <expr> <tab> emmet#expandAbbrIntelligent('\<C-y>')
augroup end
