" cancel the compatibility with Vi
set nocompatible

" activate syntax coloring except in diff mode
if !&diff
  syntax enable
endif

" color scheme
colorscheme tardypad

" decrease timeout for keycodes
set timeoutlen=300 ttimeoutlen=10

" show keys typed in status line
set showcmd

" display
set title                 " Update the title of your window or your terminal
set relativenumber        " Display relative line numbers
set ruler                 " Display cursor position
set nowrap                " Don't wrap lines when they are too long
set sidescroll=10         " horizontal scroll of columns
set cursorline            " highlight the current line
set scrolloff=3           " Display at least 3 lines around you cursor

" no bell
set noerrorbells
set visualbell
set t_vb=

" backspace behaves as expected
set backspace=indent,eol,start

" tabs
set tabstop=4       " number of visual spaces per tab
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces when editing
set shiftwidth=4    " size of an indentation
set smarttab        " tab makes cursor goes to next indent when editing new line

" visual autocomplete for command menu
set wildmenu

" define files to ignore in globbing / expanding / ...
set wildignore+=*~,*.swp

" automatically reload file when modified outside of vim
" and not modified locally
set autoread

" hide buffer instead of abandoning when switching to another buffer
set hidden

" activate specific behavior per file type such as syntax and indentation
filetype on
filetype plugin on
filetype indent on

" decrease silent time before swap file gets written
set updatetime=500

" correct joining of lines if comments
set formatoptions+=j

" define characters considered part of a word
" all alpha characters, all digits, all alpha characters with accent and _
set iskeyword=@,48-57,_,192-255

" enable swap / backup / undo files for buffers
" and store them preferably separately from the edited file location
" ^= means prepend to the default directories list
" // means use the full file path as name (prevent name collisions)
set swapfile
set backup
set undofile
set directory^=~/.vim/swap//
set backupdir^=~/.vim/backup//
set undodir^=~/.vim/undo//
set viminfo+=n~/.vim/viminfo

" keep the same file inode when writing
set backupcopy=yes

" define special characters highlight display
set listchars=extends:>,tab:>\ ,trail:·
set list

" lighter vertical split display
set fillchars+=vert:│

" save global variables (used mainly for Taboo tab names)
set sessionoptions+=globals

" search
set ignorecase " ignore case when searching
set smartcase  " search sensitive if there is an uppercase in the search term
set incsearch  " highlight search results when typing
set hlsearch   " highlight search results
set nowrapscan " search stops at the end of file

" always display status line
set laststatus=2

" build status line
set statusline=
set statusline+=%h                                                   " Help buffer flag
set statusline+=%q                                                   " Quickfix/Location list
set statusline+=%w                                                   " Preview window flag
set statusline+=%f                                                   " file relative path
set statusline+=%m                                                   " modified flag
set statusline+=%r                                                   " readonly flag
set statusline+=%=                                                   " left/right separator
set statusline+=%#StatusLineLinterError#%{LinterErrorsCount()}%*     " linter errors
set statusline+=%#StatusLineLinterWarning#%{LinterWarningsCount()}%* " linter warnings
set statusline+=%#StatusLineLinterInfo#%{LinterInfosCount()}%*       " linter infos
set statusline+=\ %y                                                 " filetype
set statusline+=\ %p%%                                               " line percentage
set statusline+=\ %l:%v                                              " line and virtual column number

" netrw
let g:netrw_liststyle = 0  " simple list
let g:netrw_banner = 0     " hide banner
let g:netrw_fastbrowse = 0 " don't reuse directory listing

" alias to change current working directory to the current file one
command Cdf cd %:p:h

" aliases to type in French and revert to English if needed
command FR set spelllang=fr | set digraph
command EN set spelllang=en | set nodigraph

" alias to disable any write in extra files
command NOLEAK set nobackup | set nowritebackup | set noswapfile | set viminfo= | set noundofile

" alias to search and insert an Unicode character
command! -nargs=1 UC :UnicodeSearch! <args>

" reload config on USR1 signal
autocmd SigUSR1 * :source $MYVIMRC
