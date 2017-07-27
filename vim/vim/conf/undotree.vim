" \uu go to Undotree window
" \uq hide Undotree window
nnoremap <silent> <Leader>uu :UndotreeShow<CR>
nnoremap <silent> <Leader>uq :UndotreeHide<CR>

" switch focus to Undotree window when toggle
let g:undotree_SetFocusWhenToggle = 1

" put the Undotree and diff windows on the right side
" prevents layout issues with NERDTree which is on the left
let g:undotree_WindowLayout = 3
