" ,ef open CtrlP in files mode
" ,eb open CtrlP in buffers mode
" ,em open CtrlP in MRU mode
let g:ctrlp_map = '<Leader>ef'
nnoremap <silent> <Leader>eb :CtrlPBuffer<CR>
nnoremap <silent> <Leader>em :CtrlPMRU<CR>

" Search follow synlinks
let g:ctrlp_follow_symlinks=1

" Search hidden files
let g:ctrlp_show_hidden = 1

" Define files and folders to ignore
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|build$\|\.kdev4$\|\.kateproject.d$',
  \ 'file': '\.kdev4$\|\.kateproject\|\.ctrlp$',
  \ }

" Define custom root folder markers
let g:ctrlp_root_markers = [ '.ctrlp' ]
