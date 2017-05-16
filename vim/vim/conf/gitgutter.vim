" turn off by default
let g:gitgutter_enabled = 0

" disable all key mappings
let g:gitgutter_map_keys = 0

" ,gg to toggle
nnoremap <silent> <Leader>gg :GitGutterToggle<CR>

" always show the sign column (if plugin enabled),
" even if there is no change
let g:gitgutter_sign_column_always = 1
