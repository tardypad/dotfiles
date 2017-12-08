" Don't strip whitespaces for certain filetypes
" the plugin better_whitespace_filetypes_blacklist variable
" only affects the usage of the highlighting
fun! FiletypeFilteredStripWhitespace()
  if &ft =~ 'markdown'
    return
  endif
  StripWhitespace
endfun

" always highlight whitespace
let g:better_whitespace_filetypes_blacklist=[]

" Strip all whitespaces on saving based on filetype
autocmd BufWritePre * call FiletypeFilteredStripWhitespace()

" Set extra whitespace highlight background color
highlight ExtraWhitespace ctermbg=10 guibg=#586e75
