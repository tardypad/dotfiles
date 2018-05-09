" fzf main binding
nnoremap <silent> <Leader>ef :FZF<CR>

" extra bindings
let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" same height as in terminal usage
let g:fzf_layout = { 'down': '20' }

" enable history
let g:fzf_history_dir = '~/.local/share/fzf-history'
