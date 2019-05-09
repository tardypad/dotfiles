" strip all trailing whitespaces on saving
" except for certain filetypes

if exists('g:loaded_remove_trailing_spaces')
  finish
endif
let g:loaded_remove_trailing_spaces = 1

let s:excluded_filetypes = [ 'markdown', 'apiblueprint' ]

function s:StripTrailingWhitespace()
  if &ft =~ join(s:excluded_filetypes, '\|')
    return
  endif
  %s/\s\+$//e
endfun

augroup remove_trailing_spaces
  autocmd!
  autocmd BufWritePre * call <SID>StripTrailingWhitespace()
augroup END
