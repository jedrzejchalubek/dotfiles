" ============================================================
" jeffkreeftmeijer/vim-numbertoggle
" ============================================================
set number relativenumber

" ============================================================
" mattn/emmet-vim
" ============================================================
augroup emmet
  au!
  let g:user_emmet_install_global = 0
  autocmd FileType html,css,sass,scss EmmetInstall
  autocmd FileType html,css,sass,scss imap <buffer> <expr> <tab> emmet#expandAbbrIntelligent('\<C-y>')
augroup end

" ============================================================
" itchyny/lightline.vim
" ============================================================
let g:lightline = {
\   'colorscheme': 'oceanicnext',
\   'active': {
\     'left': [
\       ['mode', 'paste'],
\       ['readonly', 'filename', 'modified']
\     ],
\     'right': [
\       ['lineinfo'],
\       ['linter_warnings', 'linter_errors', 'linter_ok'],
\       ['gitbranch', 'fileencoding', 'filetype']
\     ]
\   },
\   'component_function': {
\	  'filename': 'LightlineFilename',
\     'gitbranch': 'gitbranch#name',
\   },
\   'component_expand': {
\     'linter_warnings': 'LightlineLinterWarnings',
\     'linter_errors': 'LightlineLinterErrors',
\     'linter_ok': 'LightlineLinterOK'
\   },
\   'component_type': {
\     'linter_warnings': 'warning',
\     'linter_errors': 'error',
\     'linter_ok': 'LightlineLinterOK'
\   },
\ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'gitbranch_path'), ':h:h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('• %d', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('× %d', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

autocmd User ALELint call lightline#update()

" ============================================================
" terryma/vim-multiple-cursors
" ============================================================
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" ============================================================
" w0rp/ale
" ============================================================
let g:ale_lint_delay = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '×-'
let g:ale_sign_warning = '•-'

let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fix_on_save = 1

" ============================================================
" vim-gitgutter
" ============================================================
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '•'
let g:gitgutter_sign_removed = '×'

" ============================================================
" nerdtree
" ============================================================
autocmd vimenter * NERDTree

" ============================================================
" deoplete
" ============================================================
let g:deoplete#enable_at_startup = 1
