" xterm-true-color (for vim within tmux)
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" use 24 bit true color
set termguicolors

" use terminal transparency
let g:solarized_termtrans = 1

" Use dark version of Solarized color scheme
set background=dark
colorscheme solarized8

" "hide" end of buffer sign
" the line numbers are already marking the end of the buffer
highlight EndOfBuffer ctermfg=8 guifg=#002b36

" no different background behind the vertical separator character
highlight VertSplit ctermbg=NONE guibg=NONE

" display of listchars extends >, similar to less
highlight NonText cterm=reverse ctermfg=246 ctermbg=235 gui=reverse guifg=#839496 guibg=#002b36
