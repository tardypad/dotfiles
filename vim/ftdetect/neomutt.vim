" detect .mutt extension
autocmd BufNewFile,BufRead *.mutt set filetype=neomuttrc

" detect mutt mail buffers
autocmd BufRead,BufNewFile *mutt-* setfiletype mail
