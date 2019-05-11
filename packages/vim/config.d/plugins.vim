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


"" ack

" Use the silver searcher ag instead of ack
let g:ackprg = 'ag --smart-case --skip-vcs-ignores --nogroup --column --follow'

" Don't jump to the first result automatically
cnoreabbrev Ack Ack!


"" ALE

" only check when saving file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" better sign interface symbols
let g:ale_sign_error = 'xx'
let g:ale_sign_warning = '!!'
let g:ale_sign_info = '--'
let g:ale_sign_style_error = 'x'
let g:ale_sign_style_warning = '!'


"" elm

let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0
let g:elm_syntastic_show_warnings = 1


"" fzf

" internal bindings
let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" same height as in terminal usage
let g:fzf_layout = { 'down': '20' }

" enable history
let g:fzf_history_dir = '~/.local/share/fzf-history'


"" gutentags

" use current working directory as project root
let g:gutentags_project_root_finder = 'getcwd'

" Define name of tags file in the root folder
let g:gutentags_ctags_tagfile = '.tags'


"" json

"  Disable concealing of syntax
let g:vim_json_syntax_conceal = 0


"" neocomplete

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

call neocomplete#util#set_default_dictionary(
  \ 'g:neocomplete#sources#omni#input_patterns',
  \ 'elm',
  \ '\.')


"" php

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
  hi! def link phpDocIdentifier phpIdentifier
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END


"" sayonara

" we don't want to delete the buffer
" for some specific ones but just close the window
let g:sayonara_filetypes = {
  \ 'undotree': 'UndotreeHide',
  \ }


"" taboo

" tab label formats
let taboo_tab_format = ' %N %f%m '
let taboo_renamed_tab_format = ' %N %l%m '

" same modified flag as in status line
let taboo_modified_tab_flag = '[+]'


"" tagbar

" switch focus to Tagbar window when toggle
let g:tagbar_autofocus = 1

" Compact display
let g:tagbar_compact = 1

" Always open folds automatically to highlight tag
let g:tagbar_autoshowtag = 1

" decrease size of fold icons
let g:tagbar_iconchars = ['▸', '▾']


"" ultisnips

" trigger mapping is done in bindings config file
" the plugin should not overwrite the Tab mapping
let g:UltiSnipsExpandTrigger = "<NUL>"

" internal bindings
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

" define where snippets are stored
let g:UltiSnipsSnippetDirectories = [ 'snips' ]


"" undotree

" switch focus to Undotree window when toggle
let g:undotree_SetFocusWhenToggle = 1

" put the Undotree and diff windows on the right side
let g:undotree_WindowLayout = 3

" hide help line
let g:undotree_HelpLine = 0
