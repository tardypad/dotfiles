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


" oscyank

autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif


"" vdebug
let g:vdebug_options = {
\   'server': 'localhost',
\   'port': '9001',
\   'break_on_open': '0',
\   'watch_window_style': 'compact'
\   }


"" elm

let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0
let g:elm_syntastic_show_warnings = 1


"" fzf

" internal bindings
let g:fzf_action = {
  \ 'ctrl-{key/split_horizontal/low}': 'split',
  \ 'ctrl-{key/split_vertical/low}': 'vsplit' }

" same height as in terminal usage
let g:fzf_layout = { 'down': '20' }

" enable history
let g:fzf_history_dir = '{dir/data}/fzf-history'


"" goyo

let g:goyo_width = '70%'


"" gutentags

" use current working directory as project root
let g:gutentags_project_root_finder = 'getcwd'

" Define name of tags file in the root folder
let g:gutentags_ctags_tagfile = '.tags'


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
