" better scrolling during search
"
" When going to the previous/next backward/forward match, only scroll if the
" item is not already visible in the window. That way there is no unexpected
" scrolling while we press the keybinding until arriving to the match we are
" currently looking at.
"
" When the next forward match in on the next page, scroll so that it is
" displayed at the top of the page. That way there is less frequent scrolling
" since more matches are potentially displayed in the page below it.
" And similarly when going to next backward match on a previous page, display
" it at the bottom of the page.
"
" The behavior is influenced by the 'scrolloff' configuration value (if not 0)
" So for example when a match on current page is on the last line for a forward
" search, there would still be a small automatic scrolling when it is reached
" to display the surrounding lines.

if exists('g:loaded_scroll_search')
  finish
endif
let g:loaded_scroll_search = 1

" initial search direction
let s:search_direction = 'down'

" move cursor on top/bottom of the page on new page
function s:FixPosition(reverse)
  if (s:search_direction == 'down' || (s:search_direction == 'up' && a:reverse))
    \ && line('.') > s:search_last_line
    normal! zt
  elseif (s:search_direction == 'up' || (s:search_direction == 'down' && a:reverse))
    \ && line('.') < s:search_first_line
    normal! zb
  endif
endfunction

" register current position
function s:RegisterPosition()
  let s:search_first_line = line('.') - winline() + 1
  let s:search_last_line = s:search_first_line + winheight(0) - 1
endfunction

" define search direction
function s:SetDirection(direction)
  let s:search_direction = a:direction
endfunction

" remap search related keys
nnoremap <silent> n :call <SID>RegisterPosition()<CR>n
                    \:call <SID>FixPosition(0)<CR>
nnoremap <silent> N :call <SID>RegisterPosition()<CR>N
                    \:call <SID>FixPosition(1)<CR>
nnoremap <silent> * :call <SID>RegisterPosition()<CR>*
                    \:call <SID>SetDirection('down')<CR>
                    \:call <SID>FixPosition(0)<CR>
nnoremap <silent> # :call <SID>RegisterPosition()<CR>#
                    \:call <SID>SetDirection('up')<CR>
                    \:call <SID>FixPosition(0)<CR>
nnoremap <silent> g* :call <SID>RegisterPosition()<CR>g*
                     \:call <SID>SetDirection('down')<CR>
                     \:call <SID>FixPosition(0)<CR>
nnoremap <silent> g# :call <SID>RegisterPosition()<CR>g#
                     \:call <SID>SetDirection('up')<CR>
                     \:call <SID>FixPosition(0)<CR>
nnoremap / :call <SID>SetDirection('down')<CR>/
nnoremap ? :call <SID>SetDirection('up')<CR>?
