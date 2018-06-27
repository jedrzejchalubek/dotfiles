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
