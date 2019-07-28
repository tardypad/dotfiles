" cancel the compatibility with Vi
set nocompatible

" activate syntax coloring
syntax enable

" color scheme
colorscheme tardypad

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

" no beep
set novisualbell          " Prevent Vim from beeping
set noerrorbells          " Prevent Vim from beeping

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
" all alpha characters, all digits, all alpha characters with accent
set iskeyword=@,48-57,192-255

" faster access to grep help files
cnoreabbrev H helpgrep

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
let g:netrw_liststyle = 3 " tree like view
let g:netrw_banner = 0    " hide banner
