" save global variables (used mainly for Taboo tab names)
set sessionoptions+=globals

" internal session variables
let s:sessions_directory = '~/.vim/sessions'

" internal functions
function! s:get_session_path(name)
  return expand(s:sessions_directory . '/' . a:name . '.vim')
endfunction

function! s:get_session_name(path)
  return fnamemodify(a:path, ":t:r")
endfunction

function! s:session_save(name)
  execute "mksession!" s:get_session_path(a:name)
  echo "Session " . a:name . " saved"
endfunction

function! s:session_delete(name)
  call delete(s:get_session_path(a:name))
  echo "Session " . a:name . " deleted"
endfunction

function! s:session_open(name)
  execute "source" s:get_session_path(a:name)
endfunction

function! s:complete_sessions_name(arg, line, pos)
  let sessions_file_path = split(glob(s:sessions_directory . '/*'))
  let sessions_name = map(sessions_file_path, 's:get_session_name(v:val)')
  let matching_sessions_name = filter(sessions_name, 'v:val =~ a:arg')
  return matching_sessions_name
endfunction

" global functions
function! GetCurrentSessionName()
  return s:get_session_name(v:this_session)
endfunction

" commands
command! -nargs=1 -complete=customlist,s:complete_sessions_name SessionSave call<SID>session_save(<q-args>)
command! -nargs=1 -complete=customlist,s:complete_sessions_name SessionDelete call<SID>session_delete(<q-args>)
command! -nargs=1 -complete=customlist,s:complete_sessions_name SessionOpen call<SID>session_open(<q-args>)

" bindings
nnoremap ss :SessionSave <c-r>=GetCurrentSessionName()<cr>
nnoremap sx :SessionDelete <c-r>=GetCurrentSessionName()<cr>
nnoremap so :SessionOpen<space>
