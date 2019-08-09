" commands for window zooming

if exists('g:loaded_zoom_window')
  finish
endif
let g:loaded_zoom_window = 1

function s:IsEnabled()
  return exists('t:zoom_winrestcmd')
endfunction

function s:Enable()
  if s:IsEnabled()
    echo "Window is already zoomed"
    return
  endif

  let t:zoom_winrestcmd = winrestcmd()
  resize
  vertical resize
endfunction

function s:Disable()
  if !s:IsEnabled()
    echo "Window is already unzoomed"
    return
  endif

  execute t:zoom_winrestcmd
  unlet t:zoom_winrestcmd
endfunction

function s:Toggle()
  if s:IsEnabled()
    call s:Disable()
  else
    call s:Enable()
  endif
endfunction

command WindowZoomToggle call <SID>Toggle()
command WindowZoomEnable call <SID>Enable()
command WindowZoomDisable call <SID>Disable()
