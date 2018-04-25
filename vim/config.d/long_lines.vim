" Toggle long lines highlighting
nnoremap <Leader>L :call<SID>LongLineHighlightToggle()<cr>

" Function to toggle highlighting of long lines
fun! s:LongLineHighlightToggle()
 if !exists('w:longlinehl')
  let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
  echo "Long lines highlighted"
 else
  call matchdelete(w:longlinehl)
  unl w:longlinehl
  echo "Long lines unhighlighted"
 endif
endfunction
