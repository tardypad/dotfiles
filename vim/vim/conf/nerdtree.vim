" Toggle window with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

autocmd bufenter *
  \ if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
  \ | q | endif                 " Close vim if it is the only window open
