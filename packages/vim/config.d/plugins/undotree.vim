" \uu go to Undotree window
" \uq hide Undotree window
nnoremap <silent> <Leader>uu :UndotreeShow<CR>
nnoremap <silent> <Leader>uq :UndotreeHide<CR>

" switch focus to Undotree window when toggle
let g:undotree_SetFocusWhenToggle = 1

" put the Undotree and diff windows on the right side
let g:undotree_WindowLayout = 3

" hide help line
let g:undotree_HelpLine = 0
