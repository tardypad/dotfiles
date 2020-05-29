" use tab key for completion if after a character

if exists('g:loaded_tab_key')
  finish
endif
let g:loaded_tab_key = 1

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col
    return "\<tab>"
  endif

  let char = getline('.')[col - 1]
  if char =~ '\k'
    return "\<c-n>"
  else
    return "\<tab>"
  endif
endfunction

inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-p>
