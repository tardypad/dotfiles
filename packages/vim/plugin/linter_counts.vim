" functions to return some counts related to linter

if exists('g:loaded_linter_counts')
  finish
endif
let g:loaded_linter_counts = 1

function LinterErrorsCount() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:errors_count = l:counts.error + l:counts.style_error
  return l:errors_count == 0 ? '' : printf('x %d ', errors_count)
endfunction

function LinterWarningsCount() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:warnings_count = l:counts.warning + l:counts.style_warning
  return l:warnings_count == 0 ? '' : printf('! %d ', warnings_count)
endfunction

function LinterInfosCount() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:infos_count = l:counts.info
  return l:infos_count == 0 ? '' : printf('i %d ', infos_count)
endfunction
