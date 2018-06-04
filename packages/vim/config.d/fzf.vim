" fzf edit binding
nnoremap <silent> <Leader>ef :FZF<CR>
nnoremap <silent> <Leader>eb :Buffers<CR>

" fzf insert binding
nnoremap <silent> <Leader>is :Snippets<CR>

" extra bindings
let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" same height as in terminal usage
let g:fzf_layout = { 'down': '20' }

" enable history
let g:fzf_history_dir = '~/.local/share/fzf-history'
