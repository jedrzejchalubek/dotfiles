" ============================================================
" Make `j` and `k` act normally for wrapped lines
" ============================================================
nnoremap j gj
nnoremap k gk

" ============================================================
" Use CTRL-S for saving, also in Insert mode
" ============================================================
noremap <C-S> :update<CR>
inoremap <C-S> <C-O>:update<CR>
vnoremap <C-S> <C-C>:update<CR>

" ============================================================
" Use CTRL-Z for undoing in Insert mode
" ============================================================
nnoremap <C-Z> u

" ============================================================
" Toggle visibility of search hightlighting
" ============================================================
nnoremap <esc><esc> :set invhlsearch<cr>

" ============================================================
" Enable hightlighting before searching, because it may be turned off
" ============================================================
nnoremap / :set hlsearch<cr>/

" ============================================================
" Adds properly idented new line when entering <cr>
" in HTML tag with empty content, for example:
"
" Pressing enter in
"   <div>|</div>
" markup will reformat it to
"   <div>
"     |
"   </div>
" ============================================================
augroup emptytagcarriage
  au!
  autocmd FileType html,xml inoremap <expr> <cr> strpart(getline('.'), col('.')-2, 1) =~ '[>]' ? '<cr><esc>O' : '<cr>'
augroup end

" ============================================================
" FZF searching mappings
" ============================================================
function! GFilesWithFallback()
  let output = system('git rev-parse --is-inside-work-tree') =~ 'true' ? 'GFiles' : 'Files'
  let prefix = get(g:, 'fzf_command_prefix', '')
  if v:shell_error == 0
    exec "normal :" . prefix . "GFiles\<CR>"
  else
    exec "normal :" . prefix . "Files\<CR>"
  endif
  return 0
endfunction
nnoremap <c-p> :call GFilesWithFallback()<CR>

" ============================================================
" NERDTree toggle visibility
" ============================================================
map <c-b> :NERDTreeToggle<CR>

" ============================================================
" Deoplete Completions
" ============================================================
"Autocomplete and cycle from top-to-bottom of suggestions using <Tab>.
inoremap <expr><TAB> pumvisible() ? "\<c-n>" : "\<TAB>"

"<TAB>: completion.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
