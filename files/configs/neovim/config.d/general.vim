" disable syntax coloring in diff mode
if &diff
  syntax off
endif

" color scheme
colorscheme tardypad

" decrease timeout for keycodes
set timeoutlen=300 ttimeoutlen=10

" display
set title                 " Update the title of your window or your terminal
set relativenumber        " Display relative line numbers
set nowrap                " Don't wrap lines when they are too long
set sidescroll=10         " horizontal scroll of columns
set cursorline            " highlight the current line
set scrolloff=3           " Display at least 3 lines around you cursor

" disable cursor blinking in all modes
set guicursor+=a:blinkon0

" tabs
set tabstop=4       " number of visual spaces per tab
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces when editing
set shiftwidth=4    " size of an indentation

" define files to ignore in globbing / expanding / ...
set wildignore+=*~,*.swp

" decrease silent time before swap file gets written
set updatetime=500

" define characters considered part of a word
" all alpha characters, all digits, all alpha characters with accent and _
set iskeyword=@,48-57,_,192-255

" enable backup / undo files for buffers
" and store them preferably separately from the edited file location
" // means use the full file path as name (prevent name collisions)
set backup
set undofile
let &backupdir=stdpath('state') . '/backup//'

" keep the same file inode when writing
set backupcopy=yes

" define special characters highlight display
set listchars=extends:>,tab:>\ ,trail:·
set list

" save global variables (used mainly for Taboo tab names)
set sessionoptions+=globals

" folding
set foldmethod=syntax " use syntax by default
set foldlevelstart=99 " do not fold when opening file

" always use clipboard for all operations
set clipboard+=unnamedplus

set foldtext=MyFoldText()
function MyFoldText()
  let line = getline(v:foldstart)
  " keep the same alignment for tabs as when there is no fold
  return substitute(line, '\t', repeat(' ', &tabstop), 'g')
endfunction

" enable folding for some syntax
let g:sh_fold_enabled=5
let g:php_folding = 1
let g:zsh_fold_enable = 1

" search
set ignorecase " ignore case when searching
set smartcase  " search sensitive if there is an uppercase in the search term
set nowrapscan " search stops at the end of file

" build status line
set statusline=
set statusline+=%h                                                                   " Help buffer flag
set statusline+=%q                                                                   " Quickfix/Location list
set statusline+=%w                                                                   " Preview window flag
set statusline+=%f                                                                   " file relative path
set statusline+=%m                                                                   " modified flag
set statusline+=%r                                                                   " readonly flag
set statusline+=%=                                                                   " left/right separator
set statusline+=%#StatusLineDiagnosticsError#%{v:lua.DiagnosticsErrorsCount()}%*     " diagnostics errors
set statusline+=%#StatusLineDiagnosticsWarning#%{v:lua.DiagnosticsWarningsCount()}%* " diagnostics warnings
set statusline+=%#StatusLineDiagnosticsInfo#%{v:lua.DiagnosticsInfosCount()}%*       " diagnostics infos
set statusline+=\ %y                                                                 " filetype
set statusline+=\ %p%%                                                               " line percentage
set statusline+=\ %l:%v                                                              " line and virtual column number

" limit number of items in popup menu
set pumheight=10

" netrw
let g:netrw_liststyle = 0  " simple list
let g:netrw_banner = 0     " hide banner
let g:netrw_fastbrowse = 0 " don't reuse directory listing

" alias to change current working directory to the current file one
command Cdf cd %:p:h

" aliases to type in other languages and revert to English if needed
command FR set spelllang=fr | set digraph
command EN set spelllang=en | set nodigraph
command ES set spelllang=es | set digraph

" alias to disable any write in extra files
command NOLEAK set nobackup | set nowritebackup | set noswapfile | set viminfo= | set noundofile

" alias to search and insert an Unicode character
command! -nargs=1 UC :UnicodeSearch! <args>

" reload config on USR1 signal
autocmd Signal SIGUSR1 :source $MYVIMRC

" highlight yanked selection
au TextYankPost * silent! lua vim.highlight.on_yank()

" diagnostics signs
sign define DiagnosticSignError text=x texthl=DiagnosticSignError
sign define DiagnosticSignWarn  text=! texthl=DiagnosticSignWarn
sign define DiagnosticSignInfo  text=- texthl=DiagnosticSignInfo
sign define DiagnosticSignHint  text=~ texthl=DiagnosticSignHint
