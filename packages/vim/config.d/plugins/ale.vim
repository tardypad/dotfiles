" mappings
nnoremap <silent> <Leader>lp :ALEPreviousWrap<CR>
nnoremap <silent> <Leader>ln :ALENextWrap<CR>
nnoremap <silent> <Leader>lt :ALEToggleBuffer<CR>

" only check when saving file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" better sign interface symbols
let g:ale_sign_error = 'xx'
let g:ale_sign_warning = '!!'
let g:ale_sign_info = '--'
let g:ale_sign_style_error = 'x'
let g:ale_sign_style_warning = '!'

" disable highlights
let g:ale_set_highlights = 0
