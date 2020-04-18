"" general

let mapleader = "\<{key/Space}>"

" binding to reload config
nnoremap {key/reload_config/low} :source $MYVIMRC<CR>

" Disable space moves cursor in non editing mode
noremap  <{key/Space}> <nop>
vnoremap <{key/Space}> <nop>

" disable usage of Enter as Return in command mode
cnoremap <C-{key/enter/upp}> <nop>

" remove ex mode binding
nmap {key/Q} <nop>

" Toggle long lines highlighting
nnoremap <Leader>{key/L} :LongLinesHighlightToggle<CR>


"" buffers management

nnoremap <silent> <Leader>{key/buffer}{key/alternate} :b#<CR>
nnoremap <silent> <Leader>{key/buffer}{key/previous}  :bprevious<CR>
nnoremap <silent> <Leader>{key/buffer}{key/next}      :bnext<CR>
nnoremap <silent> <Leader>{key/buffer}{key/create}    :vnew<CR>
nnoremap <silent> <Leader>{key/buffer}{key/kill}      :bdelete<CR>
nnoremap          <Leader>{key/buffer}{key/rename}    :write<Space>


"" windows management

let g:tmux_navigator_no_mappings = 1

" use same tmux custom mappings with the Alt key
nnoremap <silent> {key/left}      :TmuxNavigateLeft<cr>
nnoremap <silent> {key/down}      :TmuxNavigateDown<cr>
nnoremap <silent> {key/up}        :TmuxNavigateUp<cr>
nnoremap <silent> {key/right}     :TmuxNavigateRight<cr>
nnoremap <silent> {key/alternate} :TmuxNavigatePrevious<cr>

" delete the current buffer and close the current window
nnoremap <silent> <Leader>{key/quit/low} :Sayonara<CR>

" delete the current buffer and preserve the current window
nnoremap <silent> <Leader>{key/quit/upp} :Sayonara!<CR>

" Toggle window zoom
nnoremap <silent> <C-{key/window/upp}>{key/zoom/upp} :WindowZoomToggle<CR>


"" tabs management

nnoremap          <Leader>{key/tab}{key/create} :tabnew<CR>
nnoremap <silent> <Leader>{key/tab}{key/kill}   :tabclose<CR>
nnoremap          <Leader>{key/tab}{key/rename} :TabooRename<Space>

" select
nnoremap <silent> <Leader>{key/tab}{key/1}         :tabnext 1<CR>
nnoremap <silent> <Leader>{key/tab}{key/2}         :tabnext 2<CR>
nnoremap <silent> <Leader>{key/tab}{key/3}         :tabnext 3<CR>
nnoremap <silent> <Leader>{key/tab}{key/4}         :tabnext 4<CR>
nnoremap <silent> <Leader>{key/tab}{key/5}         :tabnext 5<CR>
nnoremap <silent> <Leader>{key/tab}{key/6}         :tabnext 6<CR>
nnoremap <silent> <Leader>{key/tab}{key/7}         :tabnext 7<CR>
nnoremap <silent> <Leader>{key/tab}{key/8}         :tabnext 8<CR>
nnoremap <silent> <Leader>{key/tab}{key/9}         :tabnext 9<CR>
nnoremap <silent> <Leader>{key/tab}{key/0}         :tabnext 10<CR>
nnoremap <silent> <Leader>{key/tab}{key/alternate} :TabAlternate<CR>
nnoremap <silent> <Leader>{key/tab}{key/left}      :tabprevious<CR>
nnoremap <silent> <Leader>{key/tab}{key/previous}  :tabprevious<CR>
nnoremap <silent> <Leader>{key/tab}{key/right}     :tabnext<CR>
nnoremap <silent> <Leader>{key/tab}{key/next}      :tabnext<CR>

" move
nnoremap <silent> <Leader>{key/tab}{key/move}{key/1}        :tabmove 0<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/2}        :tabmove $ <bar> tabmove 1<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/3}        :tabmove $ <bar> tabmove 2<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/4}        :tabmove $ <bar> tabmove 3<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/5}        :tabmove $ <bar> tabmove 4<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/6}        :tabmove $ <bar> tabmove 5<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/7}        :tabmove $ <bar> tabmove 6<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/8}        :tabmove $ <bar> tabmove 7<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/9}        :tabmove $ <bar> tabmove 8<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/0}        :tabmove $ <bar> tabmove 9<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/left}     :tabmove -<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/previous} :tabmove -<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/right}    :tabmove +<CR>
nnoremap <silent> <Leader>{key/tab}{key/move}{key/next}     :tabmove +<CR>


"" sessions management

nnoremap {key/session}{key/save} :SessionSave <C-R>=GetCurrentSessionName()<CR>
nnoremap {key/session}{key/kill} :SessionDelete <C-R>=GetCurrentSessionName()<CR>
nnoremap {key/session}{key/open} :SessionOpen<space>


"" search management

" clear last search highlighting
nnoremap <silent> <{key/CR}> :noh<CR><Esc>

" Place a marker and search
nmap <Leader>{key/search_forward} mA:Ack<Space>

" Place a marker and search current word
nmap <Leader>{key/search_forward_current} mA:Ack "<C-r>=expand("<cword>")<cr>"


"" files/buffers selection

" fzf edit binding
nnoremap <silent> <Leader>{key/edit}{key/file}   :FZF<CR>
nnoremap <silent> <Leader>{key/edit}{key/buffer} :Buffers<CR>

" open file picker at current working directory
nnoremap <silent> {key/file} :execute ':Ntree' getcwd()<CR>


"" completion management

inoremap <expr><C-{key/g}> neocomplete#undo_completion()
inoremap <expr><C-{key/l}> neocomplete#complete_common_string()

inoremap <silent> <{key/CR}> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction

inoremap <expr><{key/TAB}>  pumvisible() ? "\<C-n>" : "\<TAB>"

inoremap <expr><C-{key/h}> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><{key/BS}>  neocomplete#smart_close_popup()."\<C-h>"


" Goyo

nnoremap <silent> <Leader><{key/Space}> :Goyo<CR>


" ALE

nnoremap <silent> <Leader>{key/l}{key/previous} :ALEPreviousWrap<CR>
nnoremap <silent> <Leader>{key/l}{key/next}     :ALENextWrap<CR>
nnoremap <silent> <Leader>{key/l}{key/t}        :ALEToggleBuffer<CR>


"" tagbar

nnoremap <silent> <Leader>{key/tag}{key/tag}  :TagbarOpen j<CR>
nnoremap <silent> <Leader>{key/tag}{key/quit} :TagbarClose<CR>


"" undotree

nnoremap <silent> <Leader>{key/undo}{key/undo} :UndotreeShow<CR>
nnoremap <silent> <Leader>{key/undo}{key/quit} :UndotreeHide<CR>


"" snippets

" trigger insertion
inoremap <silent> {key/snippet} <C-R>=UltiSnips#ExpandSnippet()<CR>

" insertion of snippet from list selection
nnoremap <silent> <Leader>{key/insert}{key/snippet} :Snippets<CR>
