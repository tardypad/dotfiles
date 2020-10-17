" command to select and open buffer
" use fzf plugin

if exists('g:loaded_open_buffer')
  finish
endif
let g:loaded_open_buffer = 1

let s:history_file = 'buffers'
let s:prompt = 'buffer> '

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

function s:OpenBuffer(line)
  let buf = split(a:line, "\t")[0]
  execute 'buffer' buf
endfunction

function s:Run()
  return fzf#run(fzf#wrap(s:history_file, {
  \ 'source': map(s:Buffers(), 's:FormatBuffer(v:val)'),
  \ 'sink': function('s:OpenBuffer'),
  \ 'options': [ '-d', '\t', '--with-nth', '2', '--prompt', s:prompt ]
  \}))
endfunction

command Buffers call <SID>Run()
