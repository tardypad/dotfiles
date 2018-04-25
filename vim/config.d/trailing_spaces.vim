" Strip trailing whitespaces except for certain filetypes
fun! s:FiletypeFilteredStripTrailingWhitespace()
  if &ft =~ 'markdown\|apiblueprint'
    return
  endif
  %s/\s\+$//e
endfun

" Strip all trailing whitespaces on saving based on filetype
autocmd BufWritePre * call <SID>FiletypeFilteredStripTrailingWhitespace()
