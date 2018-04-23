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

" change color of some items
highlight TagbarFoldIcon ctermfg=4 guifg=#268bd2
highlight TagbarScope ctermfg=4 guifg=#268bd2
highlight TagbarKind ctermfg=4 guifg=#268bd2
highlight TagbarNestedKind ctermfg=6 guifg=#2aa198
highlight TagbarType ctermfg=2 guifg=#859900
highlight TagbarVisibilityPublic ctermfg=3 guifg=#b58900
highlight TagbarVisibilityProtected ctermfg=3 guifg=#b58900
highlight TagbarVisibilityPrivate ctermfg=3 guifg=#b58900
