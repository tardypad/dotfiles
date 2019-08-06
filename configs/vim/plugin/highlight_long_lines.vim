" commands for highlighting of long lines
" can only be applied at window level because of matchadd usage

if exists('g:loaded_highlight_long_lines')
  finish
endif
let g:loaded_highlight_long_lines = 1

" define highlight properties
let s:highlight_group = 'WarningMsg'
let s:highlight_pattern = '.\%>80v'  " characters after 80th column included
let s:highlight_priority = -1        " search highlighting takes precedence

function s:IsEnabled()
  return exists('w:long_lines_hl_id')
endfunction

function s:Enable()
  " prevent addition of multiple same highlighting
  if s:IsEnabled()
    echo "Long lines highlighting already enabled"
    return
  endif

  let w:long_lines_hl_id = matchadd(
    \  s:highlight_group,
    \  s:highlight_pattern,
    \  s:highlight_priority)
  echo "Long lines highlighting enabled"
endfunction

function s:Disable()
  if !s:IsEnabled()
    echo "Long lines highlighting already disabled"
    return
  endif

  call matchdelete(w:long_lines_hl_id)
  unlet w:long_lines_hl_id
  echo "Long lines highlighting disabled"
endfunction

function s:Toggle()
  if s:IsEnabled()
    call s:Disable()
  else
    call s:Enable()
  endif
endfunction

command LongLinesHighlightToggle call <SID>Toggle()
command LongLinesHighlightEnable call <SID>Enable()
command LongLinesHighlightDisable call <SID>Disable()
