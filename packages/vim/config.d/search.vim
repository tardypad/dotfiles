" search related config
set ignorecase " ignore case when searching
set smartcase  " search sensitive if there is an uppercase in the search term
set incsearch  " highlight search results when typing
set hlsearch   " highlight search results
set nowrapscan " search stops at the end of file

" clear last search highlighting with Enter
nnoremap <silent> <CR> :noh<CR><Esc>

" initial search direction
let s:search_direction = 'down'

" move cursor on top/bottom of the page on new page
function! s:SearchFixPosition(reverse)
  if (s:search_direction == 'down' || (s:search_direction == 'up' && a:reverse))
    \ && line('.') > s:search_last_line
    normal! zt
  elseif (s:search_direction == 'up' || (s:search_direction == 'down' && a:reverse))
    \ && line('.') < s:search_first_line
    normal! zb
  endif
endfunction

" register current position
function! s:SearchRegisterPosition()
  let s:search_first_line = line('.') - winline() + 1
  let s:search_last_line = s:search_first_line + winheight(0) - 1
endfunction

" define search direction
function! s:SearchSetDirection(direction)
  let s:search_direction = a:direction
endfunction

" remap search related keys
nnoremap <silent> n :call <SID>SearchRegisterPosition()<CR>n
                    \:call <SID>SearchFixPosition(0)<CR>
nnoremap <silent> N :call <SID>SearchRegisterPosition()<CR>N
                    \:call <SID>SearchFixPosition(1)<CR>
nnoremap <silent> * :call <SID>SearchRegisterPosition()<CR>*
                    \:call <SID>SearchSetDirection('down')<CR>
                    \:call <SID>SearchFixPosition(0)<CR>
nnoremap <silent> # :call <SID>SearchRegisterPosition()<CR>#
                    \:call <SID>SearchSetDirection('up')<CR>
                    \:call <SID>SearchFixPosition(0)<CR>
nnoremap <silent> g* :call <SID>SearchRegisterPosition()<CR>g*
                     \:call <SID>SearchSetDirection('down')<CR>
                     \:call <SID>SearchFixPosition(0)<CR>
nnoremap <silent> g# :call <SID>SearchRegisterPosition()<CR>g#
                     \:call <SID>SearchSetDirection('up')<CR>
                     \:call <SID>SearchFixPosition(0)<CR>
nnoremap / :call <SID>SearchSetDirection('down')<CR>/
nnoremap ? :call <SID>SearchSetDirection('up')<CR>?
