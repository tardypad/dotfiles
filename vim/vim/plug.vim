" ------- Plug
" ------- Plugins manager

call plug#begin()

" Load all plugins conf files
for plugins_conf in split(glob('~/.vim/plug/*.vim'), '\n')
  exe 'source' plugins_conf
endfor

call plug#end()
