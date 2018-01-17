call plug#begin()


" Syntax checking
Plug 'scrooloose/syntastic',
  \ { 'as': 'syntastic',
  \   'commit': '206b616' }

" Autocompletion
Plug 'shougo/neocomplete.vim',
  \ { 'as': 'neocomplete',
  \   'commit': '46791e7' }

" Code commenter
Plug 'scrooloose/nerdcommenter',
  \ { 'as': 'nerdcommenter',
  \   'tag': '2.5.1' }

" Git wrapper
Plug 'tpope/vim-fugitive',
  \ { 'as': 'fugitive',
  \   'commit': '7c9b87a' }

" Git diff gutter
Plug 'airblade/vim-gitgutter',
  \ { 'as': 'gitgutter',
  \   'commit': '1e60667' }

" Tag bar
Plug 'majutsushi/tagbar',
  \ { 'as': 'tagbar',
  \   'commit': 'dc155af' }

" Tag management
Plug 'ludovicchabant/vim-gutentags',
  \ { 'as': 'gutentags',
  \   'commit': 'b948a81' }

" Text alignment
Plug 'godlygeek/tabular',
  \ { 'as': 'tabular',
  \   'tag': '1.0.0' }

" Sane buffer/window deletion
Plug 'mhinz/vim-sayonara',
  \ { 'as': 'sayonara', 'on': 'Sayonara',
  \   'commit': '357135c' }

" Tmux focus events fixes
Plug 'tmux-plugins/vim-tmux-focus-events',
  \ { 'as': 'tmux-focus-events',
  \   'commit': 'eddf52f' }

" Tmux panes navigator
Plug 'christoomey/vim-tmux-navigator',
  \ { 'as': 'tmux-navigator',
  \   'commit': 'd724094' }

" Tmux clipboard sharing
Plug 'roxma/vim-tmux-clipboard',
  \ { 'as': 'tmux-clipboard',
  \   'commit': '24e6363' }

" Tree explorer
Plug 'scrooloose/nerdtree',
  \ { 'as': 'nerdtree',
  \   'on': [ 'NERDTree', 'NERDTreeToggle', 'NERDTreeFocus' ],
  \   'commit': '97433ed' }

" Fuzzy file, buffer, MRU, tag,... finder
Plug 'ctrlpvim/ctrlp.vim',
  \ { 'as': 'ctrlp',
  \   'commit': 'bde7a29' }

" Search text and pattern in files
Plug 'mileszs/ack.vim',
  \ { 'as': 'ack',
  \   'commit': '6e04746' }

" Undo history visualizer
Plug 'mbbill/undotree',
  \ { 'as': 'undotree',
  \   'on': [ 'UndotreeShow', 'UndotreeToggle' ],
  \   'commit': 'cdbb902' }

" No plaintext storing of temporary files
Plug '~/.vim/plugged/pass',
  \ { 'as': 'pass' }

" Colorscheme
Plug 'altercation/vim-colors-solarized',
  \ { 'as': 'solarized',
  \   'commit': '528a59f' }

" Fancier statusline
Plug 'vim-airline/vim-airline',
  \ { 'as': 'airline',
  \   'commit': '396cc92' }

" Statusline themes
Plug 'vim-airline/vim-airline-themes',
  \ { 'as': 'airline-themes',
  \   'commit': '26f67b9' }

" Status line color in cursorline
Plug 'ntpeters/vim-airline-colornum',
  \ { 'as': 'airline-colornum',
  \   'tag': '0.1.0' }

" A better JSON
Plug 'elzr/vim-json',
  \ { 'as': 'json', 'for': 'json',
  \   'commit': 'f5e3181' }

" Tmux conf syntax highlighting
Plug 'keith/tmux.vim',
  \ { 'as': 'tmux', 'for': 'tmux',
  \   'commit': '2b8f628' }

" A faster YAML
Plug 'stephpy/vim-yaml',
  \ { 'as': 'yaml', 'for': [ 'yaml', 'sls' ],
  \   'commit': '291e0bc' }

" Saltstack files editing
Plug 'saltstack/salt-vim',
  \ { 'as': 'saltstack', 'for': 'sls',
  \   'commit': '6ca9e35' }

" Jinja2 syntax
Plug 'glench/vim-jinja2-syntax',
  \ { 'as': 'jinja2', 'for': [ 'sls', 'jinja2' ],
  \   'commit': 'f21d99e' }

" API Blueprint syntax
Plug 'kylef/apiblueprint.vim',
  \ { 'as': 'apiblueprint', 'for': 'apiblueprint',
  \   'commit': '776b986' }

" Icinga2 syntax
Plug '~/.vim/plugged/icinga2',
  \ { 'as': 'icinga2', 'for': 'icinga2' }

" Vifm conf syntax highligting
Plug 'vifm/vifm.vim',
  \ { 'as': 'vifm', 'for': 'vifm',
  \   'tag': 'v0.9' }

" Neomutt syntax
Plug '~/.vim/plugged/neomutt',
  \ { 'as': 'neomutt', 'for': 'neomutt' }

" Elm language
Plug 'elmcast/elm-vim',
  \ { 'as': 'elm', 'for': 'elm',
  \   'commit': 'ae53153' }

" PHP language
Plug 'stanangeloff/php.vim',
  \ { 'as': 'php', 'for': 'php',
  \   'commit': '41c36f7' }

" Improved tag bar for PHP
Plug 'vim-php/tagbar-phpctags.vim',
  \ { 'as': 'tagbar-phpctags',
  \   'tag': 'v0.5.1' }


call plug#end()
