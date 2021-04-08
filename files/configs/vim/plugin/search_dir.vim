" command to search within current working directory
" use fzf plugin and ag shell command

if exists('g:loaded_search_dir')
  finish
endif
let g:loaded_search_dir = 1

let s:history_file = 'search'
let s:prompt = '> '
let s:default_actions = { 'enter' : '' }

function s:OpenFile(lines)
  if len(a:lines) < 2
    return
  endif

  let actions = get(g:, 'fzf_action', s:default_actions)
  let cmd = get(actions, a:lines[0], '')

  for line in a:lines[1:]
    let parts = matchlist(line, '\(.*\):\(\d\+\):\(\d\+\):.*')

    execute cmd
    execute 'edit ' . parts[1]
    execute parts[2]
    execute 'normal!' . parts[3] . '|'
  endfor
endfunction

function s:Run(word)
  let actions = join(keys(get(g:, 'fzf_action', s:default_actions)), ',')

  return fzf#run(fzf#wrap(s:history_file, {
  \ 'source': 'ag --no-group --color --color-path=0 --color-match=1 --case-sensitive --column -- ' . a:word,
  \ 'sink*': function('s:OpenFile'),
  \ 'options': [ '-m', '-d', ':', '--with-nth', '1,4..', '--prompt', s:prompt,
  \              '--ansi', '--expect', actions,
  \              '--preview', 'awk -v line={2} "{ if (NR == line) { printf(\"\x1b[{color/base01/bg}%s\x1b[m\n\", \$0); } else printf(\"%s\n\", \$0); }" {1}',
  \              '--preview-window', '+{2}-/2:border-left' ]
  \}))
endfunction

command -nargs=1 SearchCWD call <SID>Run(<q-args>)
