call plug#begin()


" Trailing whitespaces handling
Plug 'ntpeters/vim-better-whitespace',
  \ { 'as': 'better-whitespace',
  \   'commit': '688837f2' }

" Syntax checking
Plug 'scrooloose/syntastic',
  \ { 'as': 'syntastic',
  \   'commit': '206b616c' }

" Autocompletion
Plug 'shougo/neocomplete.vim',
  \ { 'as': 'neocomplete',
  \   'commit': '46791e76' }

" Code commenter
Plug 'scrooloose/nerdcommenter',
  \ { 'as': 'nerdcommenter',
  \   'tag': '2.5.1' }

" Git wrapper
Plug 'tpope/vim-fugitive',
  \ { 'as': 'fugitive',
  \   'commit': '7c9b87a3' }

" Git diff gutter
Plug 'airblade/vim-gitgutter',
  \ { 'as': 'gitgutter',
  \   'commit': '1e606673' }

" Tag bar
Plug 'majutsushi/tagbar',
  \ { 'as': 'tagbar',
  \   'commit': 'dc155af2' }

" Tag management
Plug 'ludovicchabant/vim-gutentags',
  \ { 'as': 'gutentags',
  \   'commit': 'b948a814' }

" Text alignment
Plug 'godlygeek/tabular',
  \ { 'as': 'tabular',
  \   'tag': '1.0.0' }

" Sane buffer/window deletion
Plug 'mhinz/vim-sayonara',
  \ { 'as': 'sayonara', 'on': 'Sayonara',
  \   'commit': '357135ce' }

" Window maximizer
Plug 'szw/vim-maximizer',
  \ { 'as': 'maximizer',
  \   'commit': '2e54952f' }

" Tmux focus events fixes
Plug 'tmux-plugins/vim-tmux-focus-events',
  \ { 'as': 'tmux-focus-events',
  \   'commit': 'eddf52fe' }

" Tmux panes navigator
Plug 'christoomey/vim-tmux-navigator',
  \ { 'as': 'tmux-navigator',
  \   'commit': 'd724094e' }

" Tree explorer
Plug 'scrooloose/nerdtree',
  \ { 'as': 'nerdtree',
  \   'on': [ 'NERDTree', 'NERDTreeToggle', 'NERDTreeFocus' ],
  \   'commit': '97433edd' }

" Fuzzy file, buffer, MRU, tag,... finder
Plug 'ctrlpvim/ctrlp.vim',
  \ { 'as': 'ctrlp',
  \   'commit': 'bde7a295' }

" Search text and pattern in files
Plug 'mileszs/ack.vim',
  \ { 'as': 'ack',
  \   'commit': '6e04746a' }

" Undo history visualizer
Plug 'mbbill/undotree',
  \ { 'as': 'undotree',
  \   'on': [ 'UndotreeShow', 'UndotreeToggle' ],
  \   'commit': 'cdbb9022' }

" Colorscheme
Plug 'altercation/vim-colors-solarized',
  \ { 'as': 'solarized',
  \   'commit': '528a59f2' }

" Fancier statusline
Plug 'vim-airline/vim-airline',
  \ { 'as': 'airline',
  \   'commit': '396cc922' }

" Statusline themes
Plug 'vim-airline/vim-airline-themes',
  \ { 'as': 'airline-themes',
  \   'commit': '26f67b92' }

" Status line color in cursorline
Plug 'ntpeters/vim-airline-colornum',
  \ { 'as': 'airline-colornum',
  \   'tag': '0.1.0' }

" A better JSON
Plug 'elzr/vim-json',
  \ { 'as': 'json', 'for': 'json',
  \   'commit': 'f5e3181d' }

" Tmux conf syntax highlighting
Plug 'keith/tmux.vim',
  \ { 'as': 'tmux', 'for': 'tmux',
  \   'commit': '2b8f6284' }

" A faster YAML
Plug 'stephpy/vim-yaml',
  \ { 'as': 'yaml', 'for': [ 'yaml', 'sls' ],
  \   'commit': '291e0bc8' }

" Saltstack files editing
Plug 'saltstack/salt-vim',
  \ { 'as': 'saltstack', 'for': 'sls',
  \   'commit': '6ca9e350' }

" Jinja2 syntax
Plug 'glench/vim-jinja2-syntax',
  \ { 'as': 'jinja2', 'for': [ 'sls', 'jinja2' ],
  \   'commit': 'f21d99ee' }

" API Blueprint syntax
Plug 'kylef/apiblueprint.vim',
  \ { 'as': 'apiblueprint', 'for': 'apiblueprint',
  \   'commit': '776b9863' }

" Icinga2 syntax
Plug '~/.vim/plugged/icinga2',
  \ { 'as': 'icinga2', 'for': 'icinga2' }

" Neomutt syntax
Plug '~/.vim/plugged/neomutt',
  \ { 'as': 'neomutt', 'for': 'neomutt' }

" Elm language
Plug 'elmcast/elm-vim',
  \ { 'as': 'elm', 'for': 'elm',
  \   'commit': 'ae531539' }

" PHP language
Plug 'stanangeloff/php.vim',
  \ { 'as': 'php', 'for': 'php',
  \   'commit': '41c36f7f' }

" Improved tag bar for PHP
Plug 'vim-php/tagbar-phpctags.vim',
  \ { 'as': 'tagbar-phpctags',
  \   'tag': 'v0.5.1' }


call plug#end()
