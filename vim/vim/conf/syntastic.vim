set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Set active mode for all filetypes except some
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['apiblueprint','sh','php'] }

" Better sign interface symbols
let g:syntastic_error_symbol = '✘✘'
let g:syntastic_style_error_symbol = 'S✘'
let g:syntastic_warning_symbol = '!!'
let g:syntastic_style_warning_symbol = 'S!'

" PHP checkers (only keep used ones)
let g:syntastic_php_checkers = ['php', 'phpcs']
