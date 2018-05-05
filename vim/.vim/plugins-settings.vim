" jeffkreeftmeijer/vim-numbertoggle
set number relativenumber

" mattn/emmet-vim
augroup emmet
  au!
  let g:user_emmet_install_global = 0
  autocmd FileType html,css,sass,scss EmmetInstall
  autocmd FileType html,css,sass,scss imap <buffer> <expr> <tab> emmet#expandAbbrIntelligent('\<C-y>')
augroup end

" itchyny/lightline.vim
function! LightlineFilename()
  let root = fnamemodify(get(b:, 'gitbranch_path'), ':h:h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

let g:lightline = {
\   'active': {
\     'left': [
\       ['mode', 'paste'],
\       ['readonly', 'filename', 'modified'] 
\     ],
\     'right': [
\       ['lineinfo'],
\       ['gitbranch', 'fileencoding', 'filetype']
\     ]
\   },
\   'component_function': {
\	  'filename': 'LightlineFilename',
\     'gitbranch': 'gitbranch#name'
\   },
\ }

" terryma/vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
