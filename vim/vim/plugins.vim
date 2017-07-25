call plug#begin()


" Trailing whitespaces handling
Plug 'ntpeters/vim-better-whitespace',
  \ { 'as': 'better-whitespace' }

" Syntax checking
Plug 'scrooloose/syntastic',
  \ { 'as': 'syntastic' }

" Autocompletion
Plug 'shougo/neocomplete.vim',
  \ { 'as': 'neocomplete' }

" Code commenter
Plug 'scrooloose/nerdcommenter',
  \ { 'as': 'nerdcommenter' }

" Git wrapper
Plug 'tpope/vim-fugitive',
  \ { 'as': 'fugitive' }

" Git diff gutter
Plug 'airblade/vim-gitgutter',
  \ { 'as': 'gitgutter' }

" Tag bar
Plug 'majutsushi/tagbar',
  \ { 'as': 'tagbar' }

" Text alignment
Plug 'godlygeek/tabular',
  \ { 'as': 'tabular' }

" Sane buffer/window deletion
Plug 'mhinz/vim-sayonara',
  \ { 'as': 'sayonara', 'on': 'Sayonara' }

" Window maximizer
Plug 'szw/vim-maximizer',
  \ { 'as': 'maximizer' }

" Tmux focus events fixes
Plug 'tmux-plugins/vim-tmux-focus-events',
  \ { 'as': 'tmux-focus-events' }

" Tmux panes navigator
Plug 'christoomey/vim-tmux-navigator',
  \ { 'as': 'tmux-navigator' }

" Tree explorer
Plug 'scrooloose/nerdtree',
  \ { 'as': 'nerdtree',
  \   'on': [ 'NERDTree', 'NERDTreeToggle', 'NERDTreeFocus' ] }

" Fuzzy file, buffer, MRU, tag,... finder
Plug 'ctrlpvim/ctrlp.vim',
  \ { 'as': 'ctrlp' }

" Search text and pattern in files
Plug 'mileszs/ack.vim',
  \ { 'as': 'ack' }

" Undo history visualizer
Plug 'mbbill/undotree',
  \ { 'as': 'undotree',
  \   'on': [ 'UndotreeShow', 'UndotreeToggle' ] }

" Colorscheme
Plug 'altercation/vim-colors-solarized',
  \ { 'as': 'solarized' }

" Fancier statusline
Plug 'vim-airline/vim-airline',
  \ { 'as': 'airline' }

" Statusline themes
Plug 'vim-airline/vim-airline-themes',
  \ { 'as': 'airline-themes' }

" Status line color in cursorline
Plug 'ntpeters/vim-airline-colornum',
  \ { 'as': 'airline-colornum' }

" Indicator for indentation
Plug 'yggdroot/indentLine',
  \ { 'as': 'indentline' }

" Use relative line number only in current window
Plug 'vim-scripts/RelativeNumberCurrentWindow',
  \ { 'as': 'relativeNumberCurrentWindow' }

" A better JSON
Plug 'elzr/vim-json',
  \ { 'as': 'json', 'for': 'json' }

" Tmux conf syntax highlighting
Plug 'keith/tmux.vim',
  \ { 'as': 'tmux', 'for': 'tmux' }

" A faster YAML
Plug 'stephpy/vim-yaml',
  \ { 'as': 'yaml', 'for': [ 'yaml', 'sls' ] }

" Saltstack files editing
Plug 'saltstack/salt-vim',
  \ { 'as': 'saltstack', 'for': 'sls' }

" Jinja2 syntax
Plug 'glench/vim-jinja2-syntax',
  \ { 'as': 'jinja2', 'for': [ 'sls', 'jinja2' ] }

" API Blueprint syntax
Plug 'kylef/apiblueprint.vim',
  \ { 'as': 'apiblueprint', 'for': 'apiblueprint' }

" Icinga2 syntax
Plug '~/.vim/plugged/icinga2',
  \ { 'as': 'icinga2', 'for': 'icinga2' }

" Neomutt syntax
Plug '~/.vim/plugged/neomutt',
  \ { 'as': 'neomutt', 'for': 'neomutt' }

" Elm language
Plug 'elmcast/elm-vim',
  \ { 'as': 'elm', 'for': 'elm' }

" PHP language
Plug 'stanangeloff/php.vim',
  \ { 'as': 'php', 'for': 'php' }

" Improved tag bar for PHP
Plug 'vim-php/tagbar-phpctags.vim',
  \ { 'as': 'tagbar-phpctags' }


call plug#end()
