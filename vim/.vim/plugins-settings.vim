" Omnifuncs for auto-completion
augroup omnifuncs
  au!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
augroup end

" jeffkreeftmeijer/vim-numbertoggle
set number relativenumber

" mattn/emmet-vim
augroup emmet
  au!
  let g:user_emmet_install_global = 0
  let g:user_emmet_expandabbr_key='<tab>'
  autocmd FileType html,css,sass,scss EmmetInstall
  autocmd FileType html,css,sass,scss imap <expr> <tab> emmet#expandAbbrIntelligent('\<tab>')
augroup end
