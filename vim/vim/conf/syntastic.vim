" \sc to check syntax
" \st to toggle active/passive mode
nnoremap <silent> <Leader>sc :SyntasticCheck<CR>
nnoremap <silent> <Leader>st :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Better sign interface symbols
let g:syntastic_error_symbol = '✘✘'
let g:syntastic_style_error_symbol = 'S✘'
let g:syntastic_warning_symbol = '!!'
let g:syntastic_style_warning_symbol = 'S!'

" PHP checkers (only keep used ones)
let g:syntastic_php_checkers = ['php', 'phpcs']
