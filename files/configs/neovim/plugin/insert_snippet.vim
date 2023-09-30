" command to select and insert snippet
" use fzf and luasnip plugins

if exists('g:loaded_insert_snippet')
  finish
endif
let g:loaded_insert_snippet = 1

let s:history_file = 'snippets'
let s:prompt = 'snippet> '

function s:Snippets()
  let snippets = v:lua.require'luasnip'.available()[&filetype]

  let max_key_length = max(map(copy(snippets), 'len(v:val.trigger)'))

  let aligned_snippets = []

  for s in snippets
      let aligned_key = printf('%-'.max_key_length.'s', s.trigger)
      call add(aligned_snippets, printf("%s\t%s", aligned_key, s.description[0]))
  endfor

  return aligned_snippets
endfunction

function s:InjectSnippet(line)
  let snip = split(a:line)[0]
  call feedkeys('a'.snip, 'x')
  call feedkeys("a\<{key/complete/Tab}>")
endfunction

function s:Run()
  return fzf#run(fzf#wrap(s:history_file, {
  \ 'source': s:Snippets(),
  \ 'sink': function('s:InjectSnippet'),
  \ 'options': [ '--prompt', s:prompt, '--layout', 'default' ]
  \}))
endfunction

command Snippets call <SID>Run()
