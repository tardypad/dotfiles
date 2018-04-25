" Toggle window zoom
nnoremap <C-W>Z :call<SID>ZoomToggle()<cr>

" Function to toggle zoom of window
function! s:ZoomToggle()
  if exists('t:zoomed') && t:zoomed
    execute t:zoom_winrestcmd
    let t:zoomed = 0
  else
    let t:zoom_winrestcmd = winrestcmd()
    resize
    vertical resize
    let t:zoomed = 1
  endif
endfunction
