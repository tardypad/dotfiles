" \tt go to Tagbar window
" \tq hide Tagbar window
nnoremap <silent> <Leader>tt :TagbarOpen j<CR>
nnoremap <silent> <Leader>tq :TagbarClose<CR>

" switch focus to Tagbar window when toggle
let g:tagbar_autofocus = 1

" Compact display
let g:tagbar_compact = 1

" Always open folds automatically to highlight tag
let g:tagbar_autoshowtag = 1

" decrease size of fold icons
let g:tagbar_iconchars = ['▸', '▾']
