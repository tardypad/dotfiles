" command to switch to alternate tab

if exists('g:loaded_alternate_tab')
  finish
endif
let g:loaded_alternate_tab = 1

" no alternate tab at start
let s:alternate_tab_nr = 0

" display error-highlighted message
" without adding the message to message-history
function s:Error(message)
  echohl ErrorMsg
  echomsg a:message
  echohl None
endfunction

function s:GoToAlternateTab()
  if s:alternate_tab_nr == 0
    call s:Error('there is no alternate tab')
    return
  endif

  execute 'tabnext ' . s:alternate_tab_nr
endfunction

" TabLeave event is triggered before TabClosed
augroup alternate_tab
  autocmd!
  autocmd TabLeave * let s:alternate_tab_nr = tabpagenr()
  autocmd TabClosed * let s:alternate_tab_nr = 0
augroup END

command TabAlternate call <SID>GoToAlternateTab()
