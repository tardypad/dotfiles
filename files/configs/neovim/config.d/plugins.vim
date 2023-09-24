"" oscyank

autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | execute 'OSCYankRegister "' | endif

" silent copy
let g:oscyank_silent = v:true

" do not use special tmux handling with custom escape sequence because tmux filters it out by default (see allow-passthrough option)
" tmux already detects that our terminal supports OSC52 via Ms terminfo capability and let it through
let g:oscyank_term = 'default'


"" fzf

" internal bindings
let g:fzf_action = {
  \ 'ctrl-{key/split_horizontal/low}': 'split',
  \ 'ctrl-{key/split_vertical/low}': 'vsplit' }

" same height as in terminal usage
let g:fzf_layout = { 'down': '20' }

augroup fzf
  autocmd!
  " clean appearance of terminal buffer
  autocmd FileType fzf set laststatus=0 noshowmode noruler norelativenumber nolist
        \| autocmd BufUnload <buffer> set laststatus=2 showmode ruler
  " directly go to insert mode when re-entering the terminal buffer
  autocmd BufEnter * if &filetype == 'fzf' | silent! normal i | endif
augroup END

" enable history
let g:fzf_history_dir = '{dir/data}/fzf-history'


"" goyo

let g:goyo_width = '70%'


"" gutentags

" use current working directory as project root
function ForceCWD(path)
  return getcwd()
endfunction
let g:gutentags_project_root_finder = 'ForceCWD'

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


"" undotree

" switch focus to Undotree window when toggle
let g:undotree_SetFocusWhenToggle = 1

" put the Undotree and diff windows on the right side
let g:undotree_WindowLayout = 3

" hide help line
let g:undotree_HelpLine = 0


"" unicode

" disable all default bindings
let g:Unicode_no_default_mappings = v:true

" define user cache and data directories
" otherwise by default it would try on non writable package directories
let g:Unicode_data_directory = stdpath('data') . "/unicode/"
let g:Unicode_cache_directory = stdpath('cache') . "/unicode/"


"" lint / formatter

" order: save -> format -> lint
augroup format_lint
  autocmd!
  autocmd BufWritePost * FormatWrite
  autocmd User FormatterPost lua require('lint').try_lint()
augroup END
