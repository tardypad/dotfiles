"" general

let mapleader = "\<{key/space/Space}>"

" binding to reload config
nnoremap <A-{key/reload_config/low}> :source $MYVIMRC<CR>

" Disable space moves cursor in non editing mode
noremap  <{key/space/Space}> <nop>
vnoremap <{key/space/Space}> <nop>

" disable usage of Enter as Return in command mode
cnoremap <C-{key/enter/upp}> <nop>

" delete whole line in command mode
cnoremap <C-{key/command_delete_all/upp}> <C-E><C-U>

" remove ex mode binding
nmap {key/Q} <nop>

" Toggle long lines highlighting
nnoremap <Leader>{key/L} :LongLinesHighlightToggle<CR>


"" buffers management

nnoremap <silent> <Leader>{key/buffer}{key/alternate} :b#<CR>
nnoremap <silent> <Leader>{key/buffer}{key/previous}  :bprevious<CR>
nnoremap <silent> <Leader>{key/buffer}{key/next}      :bnext<CR>
nnoremap <silent> <Leader>{key/buffer}{key/create}    :vnew<CR>
nnoremap <silent> <Leader>{key/buffer}{key/close}     :bdelete<CR>
nnoremap          <Leader>{key/buffer}{key/rename}    :write<Space>


"" windows management

let g:tmux_navigator_no_mappings = 1

" use same tmux custom mappings with the Alt key
noremap <silent> <A-{key/left}>      <Cmd>TmuxNavigateLeft<cr>
noremap <silent> <A-{key/down}>      <Cmd>TmuxNavigateDown<cr>
noremap <silent> <A-{key/up}>        <Cmd>TmuxNavigateUp<cr>
noremap <silent> <A-{key/right}>     <Cmd>TmuxNavigateRight<cr>
noremap <silent> <A-{key/alternate}> <Cmd>TmuxNavigatePrevious<cr>

tnoremap <silent> <A-{key/left}>      <c-\><c-n>:TmuxNavigateLeft<cr>
tnoremap <silent> <A-{key/down}>      <c-\><c-n>:TmuxNavigateDown<cr>
tnoremap <silent> <A-{key/up}>        <c-\><c-n>:TmuxNavigateUp<cr>
tnoremap <silent> <A-{key/right}>     <c-\><c-n>:TmuxNavigateRight<cr>
tnoremap <silent> <A-{key/alternate}> <c-\><c-n>:TmuxNavigatePrevious<cr>

" delete the current buffer and close the current window
nnoremap <silent> <Leader>{key/close/low} :Sayonara<CR>

" delete the current buffer and preserve the current window
nnoremap <silent> <Leader>{key/close/upp} :Sayonara!<CR>

" Toggle window zoom
nnoremap <silent> <C-{key/window/upp}>{key/zoom/upp} :WindowZoomToggle<CR>


"" tabs management

nnoremap          <Leader>{key/tab}{key/create} :tabnew<CR>
nnoremap <silent> <Leader>{key/tab}{key/close}  :tabclose<CR>
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

nnoremap {key/session}{key/save}   :SessionSave <C-R>=GetCurrentSessionName()<CR>
nnoremap {key/session}{key/delete} :SessionDelete <C-R>=GetCurrentSessionName()<CR>
nnoremap {key/session}{key/open}   :SessionOpen<space>
nnoremap {key/session}{key/close}  :SessionClose<CR>


"" search management

" clear last search highlighting
nnoremap <silent> <C-{key/backspace}> :noh<CR><Esc>

" Place a marker and search
nmap <Leader>{key/search_forward} mA:SearchCWD<Space>

" Place a marker and search current word
nmap <Leader>{key/search_forward_current} mA:SearchCWD <C-r>=expand("<cword>")<CR><CR>


"" files/buffers selection

" fzf edit binding
nnoremap <silent> <Leader>{key/edit}{key/file}   :Files<CR>
nnoremap <silent> <Leader>{key/edit}{key/buffer} :Buffers<CR>

" open file picker at current working directory
nnoremap <silent> <A-{key/file}> :execute ':Ntree' getcwd()<CR>


" Goyo

nnoremap <silent> <Leader><{key/space/Space}> :Goyo<CR>


"" tagbar

nnoremap <silent> <Leader>{key/tag}{key/tag}  :TagbarOpen j<CR>
nnoremap <silent> <Leader>{key/tag}{key/quit} :TagbarClose<CR>


"" undotree

nnoremap <silent> <Leader>{key/undo}{key/undo} :UndotreeShow<CR>
nnoremap <silent> <Leader>{key/undo}{key/quit} :UndotreeHide<CR>


"" luasnip

inoremap <silent> <expr> <C-{key/down}> luasnip#jumpable(1) ? '<cmd>lua require("luasnip").jump(1)<CR>' : '<C-{key/down}>'
snoremap <silent> <expr> <C-{key/down}> luasnip#jumpable(1) ? '<cmd>lua require("luasnip").jump(1)<CR>' : '<C-{key/down}>'
inoremap <silent> <expr> <C-{key/up}>   luasnip#jumpable(-1) ? '<cmd>lua require("luasnip").jump(-1)<CR>' : '<C-{key/up}>'
snoremap <silent> <expr> <C-{key/up}>   luasnip#jumpable(-1) ? '<cmd>lua require("luasnip").jump(-1)<CR>' : '<C-{key/up}>'

" insertion of snippet from list selection
nnoremap <silent> <Leader>{key/insert}{key/s} :Snippets<CR>
