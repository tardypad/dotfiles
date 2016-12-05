" Toggle window with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Close vim if it is the only window open
autocmd bufenter *
  \ if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
  \ | q | endif

" Minimal display
let NERDTreeMinimalUI = 1

" Show hidden files by default
let NERDTreeShowHidden = 1

" Define files and folders to ignore by default
let NERDTreeIgnore = [ '\.git$', '\.kdev4$', '.kateproject*', 'build$', '\~$' ]
