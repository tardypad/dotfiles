" simple alignment of lines for most common cases
" use column shell command

if exists('g:loaded_align')
  finish
endif
let g:loaded_align = 1

function s:Align(separator) range
  let l:sep = substitute(a:separator, '"', '\\"', "g")
  silent execute a:firstline . "," . a:lastline . "!sed \"s" . l:sep . "g\""
  silent execute a:firstline . "," . a:lastline . "!column -t -s '' -o \"" . l:sep . "\""
endfunction

command! -nargs=1 -range Align <line1>,<line2>call<SID>Align(<q-args>)
