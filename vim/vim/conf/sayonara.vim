" we don't want to delete the buffer
" for some specific ones
" but just close the window
let g:sayonara_filetypes = {
  \ 'nerdtree': 'NERDTreeClose',
  \ 'undotree': 'UndotreeHide',
  \ }

fun! s:SanerSayonara()
  let editable_windows_count =
    \ len(filter(tabpagebuflist(), 'buflisted(v:val)'))

  " we don't want to close the window
  " if it's the last "editable" ones among several
  " but just delete the buffer
  if editable_windows_count == 1
      \ && winnr('$') > 1
      \ && buflisted(bufnr('%'))
    Sayonara!
    return
  endif

  " default behavior
  Sayonara
endfunction

" delete the current buffer and close the current window
" with few exceptions
nnoremap <silent> <Leader>q :call<SID>SanerSayonara()<CR>

" delete the current buffer and preserve the current window
nnoremap <silent> <leader>Q :Sayonara!<CR>
