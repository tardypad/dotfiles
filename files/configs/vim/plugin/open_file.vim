" command to select and open file
" use fzf plugin

if exists('g:loaded_open_file')
  finish
endif
let g:loaded_open_file = 1

let s:history_file = 'files'
let s:prompt = 'file> '

function s:Run()
  return fzf#run(fzf#wrap(s:history_file, {
  \ 'options': [ '-m', '--prompt', s:prompt ]
  \}))
endfunction

command Files call <SID>Run()
