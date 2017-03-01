" delete the current buffer and close the current window
nnoremap <silent> <Leader>q :Sayonara<CR>

" delete the current buffer and preserve the current window
nnoremap <silent> <leader>Q :Sayonara!<CR>

" confirm before quitting vim
let g:sayonara_confirm_quit = 1
