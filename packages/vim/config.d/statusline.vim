" always display status line
set laststatus=2

function! LinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:errors_count = l:counts.error + l:counts.style_error
  return l:errors_count == 0 ? '' : printf('x %d ', errors_count)
endfunction

function! LinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:warnings_count = l:counts.warning + l:counts.style_warning
  return l:warnings_count == 0 ? '' : printf('! %d ', warnings_count)
endfunction

function! LinterInfos() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:infos_count = l:counts.info
  return l:infos_count == 0 ? '' : printf('i %d ', infos_count)
endfunction

" build status line
set statusline=
set statusline+=%h                                              " Help buffer flag
set statusline+=%q                                              " Quickfix/Location list
set statusline+=%w                                              " Preview window flag
set statusline+=%f                                              " file relative path
set statusline+=%m                                              " modified flag
set statusline+=%r                                              " readonly flag
set statusline+=%=                                              " left/right separator
set statusline+=%#StatusLineLinterError#%{LinterErrors()}%*     " linter errors
set statusline+=%#StatusLineLinterWarning#%{LinterWarnings()}%* " linter warnings
set statusline+=%#StatusLineLinterInfo#%{LinterInfos()}%*       " linter infos
set statusline+=\ %y                                            " filetype
set statusline+=\ %p%%                                          " line percentage
set statusline+=\ %l:%v                                         " line and virtual column number
