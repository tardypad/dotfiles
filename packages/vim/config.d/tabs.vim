" manage alternate tab
let g:alternatetab = 1
autocmd TabLeave * let g:alternatetab = tabpagenr()
autocmd TabClosed * let g:alternatetab = 1

" Function to switch to alternate tab
function! GoToAlternateTab()
    execute "tabnext " . g:alternatetab
endfunction
