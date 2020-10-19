" command to select and open buffer
" use fzf plugin

if exists('g:loaded_open_buffer')
  finish
endif
let g:loaded_open_buffer = 1

let s:history_file = 'buffers'
let s:prompt = 'buffer> '
let s:default_actions = { 'enter' : '' }

function s:Buffers()
  let buffers = range(1, bufnr('$'))
  let valid_buffers = filter(
  \ buffers,
  \ 'buflisted(v:val) && getbufvar(v:val, "&filetype") != "qf"'
  \)
  return sort(valid_buffers, { b1, b2 -> bufname(b1) < bufname(b2) })
endfunction

function s:FormatBuffer(b)
  let name = bufname(a:b)
  let name = empty(name) ? '[No Name]' : fnamemodify(name, ":p:~:.")
  return printf("%s\t%s", a:b, name)
endfunction

function s:OpenBuffer(lines)
  if len(a:lines) < 2
    return
  endif

  let actions = get(g:, 'fzf_action', s:default_actions)
  let cmd = get(actions, a:lines[0], '')
  let buf = split(a:lines[1], "\t")[0]
  execute cmd
  execute 'buffer' buf
endfunction

function s:Run()
  let actions = join(keys(get(g:, 'fzf_action', s:default_actions)), ',')

  return fzf#run(fzf#wrap(s:history_file, {
  \ 'source': map(s:Buffers(), 's:FormatBuffer(v:val)'),
  \ 'sink*': function('s:OpenBuffer'),
  \ 'options': [ '-d', '\t', '--with-nth', '2', '--prompt', s:prompt,
  \              '--expect', actions ]
  \}))
endfunction

command Buffers call <SID>Run()
