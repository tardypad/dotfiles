call plug#begin()


" Surroundings editor
Plug 'tpope/vim-surround',
  \ { 'as': 'surround',
  \   'commit': '5970688' }

" Linting
Plug 'w0rp/ale',
  \ { 'as': 'ale',
  \   'tag': 'v2.3.1' }

" Autocompletion
Plug 'shougo/neocomplete.vim',
  \ { 'as': 'neocomplete',
  \   'commit': 'd3b4d28' }

" Code commenter
Plug 'scrooloose/nerdcommenter',
  \ { 'as': 'nerdcommenter',
  \   'tag': '2.5.2' }

" fzf wrappers collection
Plug 'junegunn/fzf.vim',
  \ { 'as': 'fzf',
  \   'commit': 'b31512e' }

" Tag bar
Plug 'majutsushi/tagbar',
  \ { 'as': 'tagbar',
  \   'commit': '387bbad' }

" Tag management
Plug 'ludovicchabant/vim-gutentags',
  \ { 'as': 'gutentags',
  \   'commit': '93616e4' }

" Snippets engine
Plug 'sirver/ultisnips',
  \ { 'as': 'ultisnips',
  \   'commit': '6fdc364' }

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
  \   'commit': 'e555efe' }

" Tmux panes navigator
Plug 'christoomey/vim-tmux-navigator',
  \ { 'as': 'tmux-navigator',
  \   'commit': '4e1a877' }

" Tmux clipboard sharing
Plug 'roxma/vim-tmux-clipboard',
  \ { 'as': 'tmux-clipboard',
  \   'commit': 'd69964a' }

" File picker
Plug 'vifm/vifm.vim',
  \ { 'as': 'vifm',
  \   'on': [ 'EditVifm', 'VsplitVifm', 'SplitVifm', 'DiffVifm', 'TabVifm' ],
  \   'for': 'vifm',
  \   'tag': 'v0.10' }

" Search text and pattern in files
Plug 'mileszs/ack.vim',
  \ { 'as': 'ack',
  \   'commit': '36e40f9' }

" Undo history visualizer
Plug 'mbbill/undotree',
  \ { 'as': 'undotree',
  \   'on': [ 'UndotreeShow', 'UndotreeToggle' ],
  \   'commit': 'db0223f' }

" No plaintext storing of temporary files
Plug 'https://sanctum.geek.nz/code/vim-redact-pass.git',
  \ { 'as': 'redact-pass',
  \   'tag': 'v2.0.0' }

" Tab utilities
Plug 'gcmt/taboo.vim',
  \ { 'as': 'taboo',
  \   'commit': '1367baf' }

" A better JSON
Plug 'elzr/vim-json',
  \ { 'as': 'json', 'for': 'json',
  \   'commit': '3727f08' }

" Sway conf syntax highlighting
Plug 'aouelete/sway-vim-syntax',
  \ { 'as': 'sway', 'for': 'sway',
  \   'commit': '0aa0626' }

" A faster YAML
Plug 'stephpy/vim-yaml',
  \ { 'as': 'yaml', 'for': [ 'yaml', 'sls' ],
  \   'commit': '0da1975' }

" Saltstack files editing
Plug 'saltstack/salt-vim',
  \ { 'as': 'saltstack', 'for': 'sls',
  \   'commit': '6ca9e35' }

" Jinja2 syntax
Plug 'glench/vim-jinja2-syntax',
  \ { 'as': 'jinja2', 'for': [ 'sls', 'jinja2' ],
  \   'commit': 'ff113ba' }

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
  \   'commit': '8af43da' }

" Elm language
Plug 'elmcast/elm-vim',
  \ { 'as': 'elm', 'for': 'elm',
  \   'commit': 'd22c0ba' }

" PHP language
Plug 'stanangeloff/php.vim',
  \ { 'as': 'php', 'for': 'php',
  \   'commit': '7671a5a' }

" Improved tag bar for PHP
Plug 'vim-php/tagbar-phpctags.vim',
  \ { 'as': 'tagbar-phpctags',
  \   'tag': 'v0.5.1' }


call plug#end()
