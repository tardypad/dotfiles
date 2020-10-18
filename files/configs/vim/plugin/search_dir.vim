" command to search within current working directory
" use fzf plugin and ag shell command

if exists('g:loaded_search_dir')
  finish
endif
let g:loaded_search_dir = 1

let s:history_file = 'search'
let s:prompt = '> '

function s:OpenFile(line)
  let parts = matchlist(a:line, '\(.*\):\(\d\+\):\(\d\+\):.*')

  execute 'edit ' . parts[1]
  execute parts[2]
  execute 'normal!' . parts[3] . '|'
endfunction

function s:Run(word)
  return fzf#run(fzf#wrap(s:history_file, {
  \ 'source': 'ag --no-group --nocolor --column -- ' . a:word,
  \ 'sink': function('s:OpenFile'),
  \ 'options': [ '-m', '-d', ':', '--with-nth', '1,4', '--prompt', s:prompt ]
  \}))
endfunction

command -nargs=1 SearchCWD call <SID>Run(<q-args>)
