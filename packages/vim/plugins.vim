call plug#begin()


" Surroundings editor
Plug 'tpope/vim-surround',
  \ { 'as': 'surround',
  \   'commit': 'e49d6c2' }

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

" fzf wrappers collection
Plug 'junegunn/fzf.vim',
  \ { 'as': 'fzf',
  \   'commit': '88595eb' }

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

" File picker
Plug 'vifm/vifm.vim',
  \ { 'as': 'vifm',
  \   'on': [ 'EditVifm', 'VsplitVifm', 'SplitVifm', 'DiffVifm', 'TabVifm' ],
  \   'for': 'vifm',
  \   'tag': 'v0.9' }

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
Plug 'lifepillar/vim-solarized8',
  \ { 'as': 'solarized',
  \   'tag': 'v1.0.1' }

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

" Tab utilities
Plug 'gcmt/taboo.vim',
  \ { 'as': 'taboo',
  \   'commit': '1367baf' }

" A better JSON
Plug 'elzr/vim-json',
  \ { 'as': 'json', 'for': 'json',
  \   'commit': 'f5e3181' }

" Sway conf syntax highlighting
Plug 'aouelete/sway-vim-syntax',
  \ { 'as': 'sway', 'for': 'sway',
  \   'commit': '0aa0626' }

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

" QML syntax
Plug 'peterhoeg/vim-qml',
  \ { 'as': 'qml', 'for': 'qml',
  \   'commit': 'c438f10' }

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
