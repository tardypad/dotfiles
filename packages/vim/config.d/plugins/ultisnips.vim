" trigger mapping is done in bindings config file
" the plugin should not overwrite the Tab mapping
let g:UltiSnipsExpandTrigger = "<NUL>"

" internal bindings
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

" define where snippets are stored
let g:UltiSnipsSnippetDirectories = [ 'snips' ]
