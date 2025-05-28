" command to search within current working directory
" use fzf plugin and rg shell command

if exists('g:loaded_search_dir')
  finish
endif
let g:loaded_search_dir = 1

let s:history_file = 'search'
let s:default_actions = { 'enter' : '' }

let s:filenames_command = 'rg -l'
let s:restricted_command = 'rg --column --color always --colors match:none --colors match:style:bold --colors path:none'
let s:unrestricted_command = s:restricted_command . ' -uuu'
let s:default_command = s:restricted_command

let s:filenames_prompt = 'Filenames> '
let s:restricted_prompt = 'Restricted> '
let s:unrestricted_prompt = 'Unrestricted> '
let s:default_prompt = '> '

let s:filenames_key = 'alt-{key/f}'
let s:restricted_key = 'alt-{key/r}'
let s:unrestricted_key = 'alt-{key/u}'

function s:OpenFile(lines)
  if len(a:lines) < 2
    return
  endif

  let actions = get(g:, 'fzf_action', s:default_actions)
  let cmd = get(actions, a:lines[0], '')

  for line in a:lines[1:]
    let parts = matchlist(line, '\(.*\):\(\d\+\):\(\d\+\):.*')

    if len(parts) == 0
        " filenames mode
        execute cmd
        execute 'edit ' . line
        continue
    endif

    execute cmd
    execute 'edit ' . parts[1]
    execute parts[2]
    execute 'normal! 0' . parts[3] . 'lh'
  endfor
endfunction

function s:Run(word)
  let actions = join(keys(get(g:, 'fzf_action', s:default_actions)), ',')

  let @/ = a:word

  return fzf#run(fzf#wrap(s:history_file, {
  \ 'source':  s:default_command . ' -- ' . a:word,
  \ 'sink*': function('s:OpenFile'),
  \ 'options': [ '-m', '-d', ':', '--with-nth', '1,4..', '--prompt', s:default_prompt,
  \              '--layout', 'default', '--ansi', '--expect', actions,
  \              '--bind', s:filenames_key . ':change-prompt(' . s:filenames_prompt . ')+reload(' . s:filenames_command . ' -- ' . a:word . ')',
  \              '--bind', s:restricted_key . ':change-prompt(' . s:restricted_prompt . ')+reload(' . s:restricted_command . ' -- ' . a:word . ')',
  \              '--bind', s:unrestricted_key . ':change-prompt(' . s:unrestricted_prompt . ')+reload(' . s:unrestricted_command . ' -- ' . a:word . ')',
  \              '--preview', 'awk -v line={2} "{ if (NR == line) { printf(\"\x1b[{color/base01/bg}m%s\x1b[m\n\", \$0); } else printf(\"%s\n\", \$0); }" {1}',
  \              '--preview-window', '+{2}-/2:border-left' ]
  \}))
endfunction

command -nargs=1 SearchCWD call <SID>Run(<q-args>)
