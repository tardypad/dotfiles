"" general

" Use space as leader
let mapleader = "\<Space>"

" binding to reload config
nnoremap r :source $MYVIMRC<CR>

" Disable space moves cursor in non editing mode
noremap <Space> <nop>
vnoremap <Space> <nop>

" disable usage of Ctrl-J as Enter in command mode
cnoremap <C-J> <nop>

" remove ex mode binding
nmap Q <nop>

" Toggle long lines highlighting
nnoremap <Leader>L :LongLinesHighlightToggle<CR>

" Disable arrow keys usage to break bad habits
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <PageUp> <nop>
noremap <PageDown> <nop>
noremap <Home> <nop>
noremap <End> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <PageUp> <nop>
inoremap <PageDown> <nop>
inoremap <Home> <nop>
inoremap <End> <nop>

vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>
vnoremap <PageUp> <nop>
vnoremap <PageDown> <nop>
vnoremap <Home> <nop>
vnoremap <End> <nop>


"" buffers management

nnoremap <silent> <Leader>ba :b#<CR>
nnoremap <silent> <Leader>bp :bprevious<CR>
nnoremap <silent> <Leader>bn :bnext<CR>
nnoremap <silent> <Leader>bc :vnew<CR>
nnoremap <silent> <Leader>bx :bdelete<CR>
nnoremap          <Leader>br :write<Space>


"" windows management

let g:tmux_navigator_no_mappings = 1

" use same tmux custom mappings with the Alt key
nnoremap <silent> h :TmuxNavigateLeft<cr>
nnoremap <silent> j :TmuxNavigateDown<cr>
nnoremap <silent> k :TmuxNavigateUp<cr>
nnoremap <silent> l :TmuxNavigateRight<cr>
nnoremap <silent> a :TmuxNavigatePrevious<cr>

" delete the current buffer and close the current window with few exceptions
nnoremap <silent> <Leader>q :call SanerSayonara()<CR>

" delete the current buffer and preserve the current window
nnoremap <silent> <Leader>Q :Sayonara!<CR>

" Toggle window zoom
nnoremap <silent> <C-W>Z :WindowZoomToggle<CR>


"" tabs management

nnoremap          <Leader>tc :tabnew<CR>
nnoremap <silent> <Leader>tx :tabclose<CR>
nnoremap          <Leader>tr :TabooRename<Space>

" select
nnoremap <silent> <Leader>t1 :tabnext 1<CR>
nnoremap <silent> <Leader>t2 :tabnext 2<CR>
nnoremap <silent> <Leader>t3 :tabnext 3<CR>
nnoremap <silent> <Leader>t4 :tabnext 4<CR>
nnoremap <silent> <Leader>t5 :tabnext 5<CR>
nnoremap <silent> <Leader>t6 :tabnext 6<CR>
nnoremap <silent> <Leader>t7 :tabnext 7<CR>
nnoremap <silent> <Leader>t8 :tabnext 8<CR>
nnoremap <silent> <Leader>t9 :tabnext 9<CR>
nnoremap <silent> <Leader>t0 :tabnext 10<CR>
nnoremap <silent> <Leader>ta :TabAlternate<CR>
nnoremap <silent> <Leader>th :tabprevious<CR>
nnoremap <silent> <Leader>tp :tabprevious<CR>
nnoremap <silent> <Leader>tl :tabnext<CR>
nnoremap <silent> <Leader>tn :tabnext<CR>

" move
nnoremap <silent> <Leader>tm1 :tabmove 0<CR>
nnoremap <silent> <Leader>tm2 :tabmove $ <bar> tabmove 1<CR>
nnoremap <silent> <Leader>tm3 :tabmove $ <bar> tabmove 2<CR>
nnoremap <silent> <Leader>tm4 :tabmove $ <bar> tabmove 3<CR>
nnoremap <silent> <Leader>tm5 :tabmove $ <bar> tabmove 4<CR>
nnoremap <silent> <Leader>tm6 :tabmove $ <bar> tabmove 5<CR>
nnoremap <silent> <Leader>tm7 :tabmove $ <bar> tabmove 6<CR>
nnoremap <silent> <Leader>tm8 :tabmove $ <bar> tabmove 7<CR>
nnoremap <silent> <Leader>tm9 :tabmove $ <bar> tabmove 8<CR>
nnoremap <silent> <Leader>tm0 :tabmove $ <bar> tabmove 9<CR>
nnoremap <silent> <Leader>tmh :tabmove -<CR>
nnoremap <silent> <Leader>tmp :tabmove -<CR>
nnoremap <silent> <Leader>tml :tabmove +<CR>
nnoremap <silent> <Leader>tmn :tabmove +<CR>


"" sessions management

nnoremap ss :SessionSave <c-r>=GetCurrentSessionName()<cr>
nnoremap sx :SessionDelete <c-r>=GetCurrentSessionName()<cr>
nnoremap so :SessionOpen<space>


"" search management

" clear last search highlighting with Enter
nnoremap <silent> <CR> :noh<CR><Esc>

" remap search related keys
nnoremap <silent> n :call SearchRegisterPosition()<CR>n
                    \:call SearchFixPosition(0)<CR>
nnoremap <silent> N :call SearchRegisterPosition()<CR>N
                    \:call SearchFixPosition(1)<CR>
nnoremap <silent> * :call SearchRegisterPosition()<CR>*
                    \:call SearchSetDirection('down')<CR>
                    \:call SearchFixPosition(0)<CR>
nnoremap <silent> # :call SearchRegisterPosition()<CR>#
                    \:call SearchSetDirection('up')<CR>
                    \:call SearchFixPosition(0)<CR>
nnoremap <silent> g* :call SearchRegisterPosition()<CR>g*
                     \:call SearchSetDirection('down')<CR>
                     \:call SearchFixPosition(0)<CR>
nnoremap <silent> g# :call SearchRegisterPosition()<CR>g#
                     \:call SearchSetDirection('up')<CR>
                     \:call SearchFixPosition(0)<CR>
nnoremap / :call SearchSetDirection('down')<CR>/
nnoremap ? :call SearchSetDirection('up')<CR>?

" Place a marker and search
nmap <Leader>/ mA:Ack<Space>

" Place a marker and search current word
nmap <Leader>* mA:Ack "<C-r>=expand("<cword>")<cr>"


"" files/buffers selection

" fzf edit binding
nnoremap <silent> <Leader>ef :FZF<CR>
nnoremap <silent> <Leader>eb :Buffers<CR>

" Alt+f to open file picker at current working directory
nnoremap <silent> f :execute ':EditVifm' getcwd()<CR>


"" completion management

inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"


" ALE

nnoremap <silent> <Leader>lp :ALEPreviousWrap<CR>
nnoremap <silent> <Leader>ln :ALENextWrap<CR>
nnoremap <silent> <Leader>lt :ALEToggleBuffer<CR>


"" tagbar

nnoremap <silent> <Leader>tt :TagbarOpen j<CR>
nnoremap <silent> <Leader>tq :TagbarClose<CR>


"" undotree

nnoremap <silent> <Leader>uu :UndotreeShow<CR>
nnoremap <silent> <Leader>uq :UndotreeHide<CR>


"" snippets

" trigger insertion
inoremap <silent> s <C-R>=UltiSnips#ExpandSnippet()<CR>

" insertion of snippet from list selection
nnoremap <silent> <Leader>is :Snippets<CR>
