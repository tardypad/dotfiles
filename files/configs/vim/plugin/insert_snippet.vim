" command to select and insert snippet
" use fzf and ultisnips plugins

if exists('g:loaded_insert_snippet')
  finish
endif
let g:loaded_insert_snippet = 1

let s:history_file = 'snippets'
let s:prompt = 'snippet> '

function s:Snippets()
  let snippets = UltiSnips#SnippetsInCurrentScope()

  let max_key_length = max(map(keys(snippets), 'len(v:val)'))

  let aligned_snippets = []

  for key in sort(keys(snippets))
      let aligned_key = printf('%-'.max_key_length.'s', key)
      call add(aligned_snippets, printf("%s\t%s", aligned_key, snippets[key]))
  endfor

  return aligned_snippets
endfunction

function s:InjectSnippet(line)
  let snip = split(a:line)[0]
  execute 'normal! a' . snip . "\<c-r>=UltiSnips#ExpandSnippet()\<CR>"
endfunction

function s:Run()
  return fzf#run(fzf#wrap(s:history_file, {
  \ 'source': s:Snippets(),
  \ 'sink': function('s:InjectSnippet'),
  \ 'options': [ '--prompt', s:prompt ]
  \}))
endfunction

command Snippets call <SID>Run()
