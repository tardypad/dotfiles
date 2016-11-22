" Don't use PHP md and PHP cs from this plugin (use Syntastic for it)
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0

" Only show non covered lines
let g:phpqa_codecoverage_showcovered = 0
let g:phpqa_codecoverage_regex = 0      " bug in the plugin to need this?
