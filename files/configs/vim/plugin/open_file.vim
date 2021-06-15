" command to select and open file
" use fzf plugin

if exists('g:loaded_open_file')
  finish
endif
let g:loaded_open_file = 1

let s:history_file = 'files'

let s:restricted_command = 'rg --files'
let s:unrestricted_command = s:restricted_command . ' -uuu'
let s:default_command = s:restricted_command

let s:restricted_prompt = 'Restricted file> '
let s:unrestricted_prompt = 'Unrestricted file> '
let s:default_prompt = 'file> '

let s:restricted_key = 'alt-{key/r}'
let s:unrestricted_key = 'alt-{key/u}'

function s:Run()
  return fzf#run(fzf#wrap(s:history_file, {
  \ 'source':  s:default_command,
  \ 'options': [ '-m', '--prompt', s:default_prompt,
  \              '--bind', s:restricted_key . ':change-prompt(' . s:restricted_prompt . ')+reload(' . s:restricted_command . ')',
  \              '--bind', s:unrestricted_key . ':change-prompt(' . s:unrestricted_prompt . ')+reload(' . s:unrestricted_command . ')' ]
  \}))
endfunction

command Files call <SID>Run()
