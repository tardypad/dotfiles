" manage alternate tab
let g:alternatetab = 1
autocmd TabLeave * let g:alternatetab = tabpagenr()
autocmd TabClosed * let g:alternatetab = 1

" tabs management
nnoremap          <Leader>tc :tabnew<CR>
nnoremap <silent> <Leader>tx :tabclose<CR>
nnoremap          <Leader>tr :TabooRename<Space>

" tabs navigation
nnoremap <silent> <Leader>t1 :tabnext 1<CR>
nnoremap <silent> <Leader>t2 :tabnext 2<CR>
nnoremap <silent> <Leader>t3 :tabnext 3<CR>
nnoremap <silent> <Leader>t4 :tabnext 4<CR>
nnoremap <silent> <Leader>t5 :tabnext 5<CR>
nnoremap <silent> <Leader>t6 :tabnext 6<CR>
nnoremap <silent> <Leader>t7 :tabnext 7<CR>
nnoremap <silent> <Leader>t8 :tabnext 8<CR>
nnoremap <silent> <Leader>t9 :tabnext 9<CR>
nnoremap <silent> <Leader>t0 :tabnext 10<CR>
nnoremap <silent> <Leader>ta :execute "tabnext " . g:alternatetab<CR>
nnoremap <silent> <Leader>th :tabprevious<CR>
nnoremap <silent> <Leader>tp :tabprevious<CR>
nnoremap <silent> <Leader>tl :tabnext<CR>
nnoremap <silent> <Leader>tn :tabnext<CR>

" tabs moving
nnoremap <silent> <Leader>tm1 :tabmove 0<CR>
nnoremap <silent> <Leader>tm2 :tabmove 1<CR>
nnoremap <silent> <Leader>tm3 :tabmove 2<CR>
nnoremap <silent> <Leader>tm4 :tabmove 3<CR>
nnoremap <silent> <Leader>tm5 :tabmove 4<CR>
nnoremap <silent> <Leader>tm6 :tabmove 5<CR>
nnoremap <silent> <Leader>tm7 :tabmove 6<CR>
nnoremap <silent> <Leader>tm8 :tabmove 7<CR>
nnoremap <silent> <Leader>tm9 :tabmove 8<CR>
nnoremap <silent> <Leader>tm0 :tabmove 9<CR>
nnoremap <silent> <Leader>tmh :tabmove -<CR>
nnoremap <silent> <Leader>tmp :tabmove -<CR>
nnoremap <silent> <Leader>tml :tabmove +<CR>
nnoremap <silent> <Leader>tmn :tabmove +<CR>
