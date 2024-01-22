" commands to manage sessions

if exists('g:loaded_manage_sessions')
  finish
endif
let g:loaded_manage_sessions = 1

let s:sessions_directory = stdpath('data') . '/sessions'

if !isdirectory(s:sessions_directory)
  call mkdir(s:sessions_directory, 'p')
endif

function s:GetSessionPath(name)
  return expand(s:sessions_directory . '/' . a:name . '.vim')
endfunction

function s:GetSessionName(path)
  return fnamemodify(a:path, ":t:r")
endfunction

function s:SaveSession(name)
  execute "mksession!" s:GetSessionPath(a:name)
  echo "Session " . a:name . " saved"
endfunction

function s:DeleteSession(name)
  call delete(s:GetSessionPath(a:name))
  echo "Session " . a:name . " deleted"
endfunction

function s:OpenSession(name)
  execute "source" s:GetSessionPath(a:name)
endfunction

function s:CloseSession()
  " go to first tab (which is normally reserved for TODO file)
  " delete all buffers
  " edit the alternate file (TODO file)
  " delete the [No Name] buffer that was created before
  " create a new tab
  silent execute "tabnext 1|%bdelete|edit#|bdelete#|tabnew"
  let v:this_session = ''
endfunction

function s:CompleteSessionsName(arg, line, pos)
  let l:sessions_file_path = split(glob(s:sessions_directory . '/*'))
  let l:sessions_name = map(l:sessions_file_path, 's:GetSessionName(v:val)')
  let l:matching_sessions_name = filter(l:sessions_name, 'v:val =~ a:arg')
  return l:matching_sessions_name
endfunction

" public function
function GetCurrentSessionName()
  return s:GetSessionName(v:this_session)
endfunction

command -nargs=1 -complete=customlist,s:CompleteSessionsName
  \ SessionSave call<SID>SaveSession(<q-args>)
command -nargs=1 -complete=customlist,s:CompleteSessionsName
  \ SessionDelete call<SID>DeleteSession(<q-args>)
command -nargs=1 -complete=customlist,s:CompleteSessionsName
  \ SessionOpen call<SID>OpenSession(<q-args>)
command SessionClose call<SID>CloseSession()
