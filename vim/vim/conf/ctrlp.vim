" Search within the current working directory
" it ignores working path mode
let g:ctrlp_cmd = 'CtrlPCurWD'

" Search follow synlinks
let g:ctrlp_follow_symlinks=1

" Search hidden files
let g:ctrlp_show_hidden = 1

" Define files and folders to ignore
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|build$\|\.kdev4$\|\.kateproject.d$',
  \ 'file': '\.kdev4$\|\.kateproject',
  \ }

" Use ,p to navigate between buffers
nmap <Leader>p :CtrlPBuffer<CR>
