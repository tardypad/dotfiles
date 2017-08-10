" \nn go to NERDTree window in its current state
" \n! go to NERDTree window in its initial state
" \nq hide NERDTree window
nnoremap <silent> <Leader>nn :NERDTreeFocus<CR>
nnoremap <silent> <Leader>n! :NERDTree<CR>
nnoremap <silent> <Leader>nq :NERDTreeClose<CR>

" Close vim if it is the only window open
autocmd bufenter *
  \ if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
  \ | q | endif

" Minimal display
let NERDTreeMinimalUI = 1

" Show hidden files by default
let NERDTreeShowHidden = 1

" Define default width
let g:NERDTreeWinSize = 30

" Define files and folders to ignore by default
let NERDTreeIgnore = [ '\.root$', '\.git$', '\.kdev4$', '.kateproject*', 'build$' ]

" Ignore files defined in wildignore too
let NERDTreeRespectWildIgnore = 1
