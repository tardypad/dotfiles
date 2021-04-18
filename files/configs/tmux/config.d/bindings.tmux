# remove all default bindings
unbind -T prefix -a
unbind -T root -a
unbind -T copy-mode-vi -a


## general

# reload configuration
bind -N 'reload config' M-{key/reload_config} source-file {dir/config}/tmux/tmux.conf \; \
                                              display-message "Configuration reloaded"

# detach client
bind -N 'detach client'   {key/quit/low} detach-client
bind -N 'detach client' C-{key/quit/low} detach-client

bind -N 'run command'                  {key/command} command-prompt
bind -N 'list keys'                  M-{key/?}       list-keys -a -N
bind -N 'toggle activity monitoring' M-{key/a}       run "tmux-toggle-monitoring activity '#{socket_path}' '#{session_id}' '#{window_id}'"
bind -N 'toggle silence monitoring'  M-{key/s}       run "tmux-toggle-monitoring silence '#{socket_path}' '#{session_id}' '#{window_id}'"
bind -N 'toggle bell monitoring'     M-{key/b}       run "tmux-toggle-monitoring bell '#{socket_path}' '#{session_id}' '#{window_id}'"
bind -N 'choose buffer'              M-{key/c}       choose-buffer -Z -F '#{buffer_sample}' -O time
bind -N 'documentation'              M-{key/d}       split-window -h -f -l 80 "printf 'documentation\n\n'; documentation-all || sleep 2"
bind -N 'clear pane history'         M-{key/clear}   clear-history \; \
                                                     display-message "Pane history cleared"

# copy/paste
bind -N 'enter copy mode' {key/space/Space}  copy-mode
bind -N 'paste buffer'    {key/return/Enter} paste-buffer


## sessions management (Ctrl)

bind -N 'create session' C-{key/create/low} new-session -c "${HOME}"
bind -N 'rename session' C-{key/rename/low} command-prompt "rename-session '%%'"
bind -N 'close session'  C-{key/close/low}  confirm-before -p 'kill-session "#{session_name}"? (y/n)' kill-session

# select
%if #{TMUX_ENV}
bind -N 'select session to switch to' C-{key/session/low} choose-tree -Z -s -w -F '#{?pane_format,#{pane_current_command},#{?window_format,#{window_name},}}' -O index
%else
bind -N 'select session to switch to' C-{key/session/low} choose-tree -Z -s -w -F '#{?pane_format,#{pane_current_command},#{window_name}}' -O index
%endif
bind -N 'switch to alternate session' C-{key/alternate/low} switch-client -l
bind -N 'switch to next session'      C-{key/next/low}      switch-client -n
bind -N 'switch to next session'      C-{key/down/low}      switch-client -n
bind -N 'switch to previous session'  C-{key/previous/low}  switch-client -p
bind -N 'switch to previous session'  C-{key/up/low}        switch-client -p
bind -N 'switch to session 1'         C-{key/1}             switch-client -t $0
bind -N 'switch to session 2'         C-{key/2}             switch-client -t $1
bind -N 'switch to session 3'         C-{key/3}             switch-client -t $2
bind -N 'switch to session 4'         C-{key/4}             switch-client -t $3
bind -N 'switch to session 5'         C-{key/5}             switch-client -t $4
bind -N 'switch to session 6'         C-{key/6}             switch-client -t $5
bind -N 'switch to session 7'         C-{key/7}             switch-client -t $6
bind -N 'switch to session 8'         C-{key/8}             switch-client -t $7
bind -N 'switch to session 9'         C-{key/9}             switch-client -t $8
bind -N 'switch to session 10'        C-{key/0}             switch-client -t $9


## windows management (lowercase)

bind -N 'create window' {key/create/low} new-window -c "${HOME}"
bind -N 'rename window' {key/rename/low} command-prompt "rename-window '%%'"
bind -N 'close window'  {key/close/low}  confirm-before -p 'kill-window "#{window_name}"? (y/n)' kill-window

# select
bind -N 'select window to switch to' {key/window/low}    choose-tree -Z -w -F '#{?pane_format,#{pane_current_command},#{?window_format,#{window_name},}}' -f "#{!=:0,#{session_attached}}" -O index
bind -N 'switch to alternate window' {key/alternate/low} select-window -t ':{last}'
bind -N 'switch to next window'      {key/next/low}      select-window -t ':{next}'
bind -N 'switch to next window'      {key/right/low}     select-window -t ':{next}'
bind -N 'switch to previous window'  {key/previous/low}  select-window -t ':{previous}'
bind -N 'switch to previous window'  {key/left/low}      select-window -t ':{previous}'
bind -N 'switch to window 1'         {key/1}             select-window -t :=1
bind -N 'switch to window 2'         {key/2}             select-window -t :=2
bind -N 'switch to window 3'         {key/3}             select-window -t :=3
bind -N 'switch to window 4'         {key/4}             select-window -t :=4
bind -N 'switch to window 5'         {key/5}             select-window -t :=5
bind -N 'switch to window 6'         {key/6}             select-window -t :=6
bind -N 'switch to window 7'         {key/7}             select-window -t :=7
bind -N 'switch to window 8'         {key/8}             select-window -t :=8
bind -N 'switch to window 9'         {key/9}             select-window -t :=9
bind -N 'switch to window 10'        {key/0}             select-window -t :=10

# split
bind -N 'split window vertically'   {key/split_vertical/low}   split-window -h -c '#{pane_current_path}'
bind -N 'split window horizontally' {key/split_horizontal/low} split-window -v -c '#{pane_current_path}'

# move mode
bind         -N 'enter window move mode'             {key/move/low}      switch-client -T move
bind -T move -N 'list keys'                        M-{key/?}             list-keys -T move -a -N
bind -T move -N 'swap window with alternate one'     {key/alternate/low} switch-client -T move \; swap-window -d -t ':{last}'
bind -T move -N 'move window to next position'       {key/next/low}      switch-client -T move \; swap-window -d -t ':{next}'
bind -T move -N 'move window to next position'       {key/right/low}     switch-client -T move \; swap-window -d -t ':{next}'
bind -T move -N 'move window to previous position'   {key/previous/low}  switch-client -T move \; swap-window -d -t ':{previous}'
bind -T move -N 'move window to previous position'   {key/left/low}      switch-client -T move \; swap-window -d -t ':{previous}'
bind -T move -N 'move window to index 1'             {key/1}             switch-client -T move \; run "tmux-move-window-index 1"
bind -T move -N 'move window to index 2'             {key/2}             switch-client -T move \; run "tmux-move-window-index 2"
bind -T move -N 'move window to index 3'             {key/3}             switch-client -T move \; run "tmux-move-window-index 3"
bind -T move -N 'move window to index 4'             {key/4}             switch-client -T move \; run "tmux-move-window-index 4"
bind -T move -N 'move window to index 5'             {key/5}             switch-client -T move \; run "tmux-move-window-index 5"
bind -T move -N 'move window to index 6'             {key/6}             switch-client -T move \; run "tmux-move-window-index 6"
bind -T move -N 'move window to index 7'             {key/7}             switch-client -T move \; run "tmux-move-window-index 7"
bind -T move -N 'move window to index 8'             {key/8}             switch-client -T move \; run "tmux-move-window-index 8"
bind -T move -N 'move window to index 9'             {key/9}             switch-client -T move \; run "tmux-move-window-index 9"
bind -T move -N 'move window to index 10'            {key/0}             switch-client -T move \; run "tmux-move-window-index 10"

# layout mode
bind           -N 'enter window layout mode'     {key/layout/low} switch-client -T layout
bind -T layout -N 'list keys'                  M-{key/?}          list-keys -T layout -a -N
bind -T layout -N 'use even horizontal layout'   {key/1}          switch-client -T layout \; select-layout even-horizontal
bind -T layout -N 'use main vertical layout'     {key/2}          switch-client -T layout \; select-layout main-vertical
bind -T layout -N 'use even vertical layout'     {key/3}          switch-client -T layout \; select-layout even-vertical
bind -T layout -N 'use main horizontal layout'   {key/4}          switch-client -T layout \; select-layout main-horizontal
bind -T layout -N 'use tiled layout'             {key/5}          switch-client -T layout \; select-layout tiled


## panes management (uppercase)

bind -N 'create pane'          {key/create/upp} split-window -h -c '#{pane_current_path}'
bind -N 'close pane'           {key/close/upp}  if '[ #{window_panes} -ne 1 ]' kill-pane 'confirm-before -p "kill-window \"#{window_name}\"? (y/n)" kill-window'
bind -N 'zoom pane'            {key/zoom/upp}   resize-pane -Z
bind -N 'display panes number' {key/G}          display-panes

# select
bind -N 'switch to alternate pane' {key/alternate/upp} select-pane -t ':.{last}'
bind -N 'switch to next pane'      {key/next/upp}      select-pane -t ':.{next}'
bind -N 'switch to previous pane'  {key/previous/upp}  select-pane -t ':.{previous}'
bind -N 'switch to left pane'      {key/left/upp}      select-pane -t ':.{left-of}'
bind -N 'switch to down pane'      {key/down/upp}      select-pane -t ':.{down-of}'
bind -N 'switch to up pane'        {key/up/upp}        select-pane -t ':.{up-of}'
bind -N 'switch to right pane'     {key/right/upp}     select-pane -t ':.{right-of}'

bind -T root -N 'switch to alternate pane' M-{key/alternate/low} run "tmux-select-pane-vim a"
bind -T root -N 'switch to left pane'      M-{key/left/low}      run "tmux-select-pane-vim h"
bind -T root -N 'switch to down pane'      M-{key/down/low}      run "tmux-select-pane-vim j"
bind -T root -N 'switch to up pane'        M-{key/up/low}        run "tmux-select-pane-vim k"
bind -T root -N 'switch to right pane'     M-{key/right/low}     run "tmux-select-pane-vim l"

# respawn
bind -N 'respawn pane'            {key/backspace/BSpace} respawn-pane
bind -N 'respawn pane (forced)' M-{key/backspace/BSpace} respawn-pane -k

# move mode
bind         -N 'enter pane move mode'             {key/move/upp}      switch-client -T MOVE
bind -T MOVE -N 'list keys'                      M-{key/?}             list-keys -T MOVE -a -N
bind -T MOVE -N 'move pane to new window'          {key/create/low}    switch-client -T MOVE \; break-pane
bind -T MOVE -N 'move pane to alternate window'    {key/alternate/low} switch-client -T MOVE \; move-pane -h -t ':{last}'
bind -T MOVE -N 'move pane to next window'         {key/next/low}      switch-client -T MOVE \; move-pane -h -t ':{next}'
bind -T MOVE -N 'move pane to next window'         {key/right/low}     switch-client -T MOVE \; move-pane -h -t ':{next}'
bind -T MOVE -N 'move pane to previous window'     {key/previous/low}  switch-client -T MOVE \; move-pane -h -t ':{previous}'
bind -T MOVE -N 'move pane to previous window'     {key/left/low}      switch-client -T MOVE \; move-pane -h -t ':{previous}'
bind -T MOVE -N 'swap pane with alternate one'     {key/alternate/upp} switch-client -T MOVE \; swap-pane -d -t ':.{last}'
bind -T MOVE -N 'move pane to next position'       {key/next/upp}      switch-client -T MOVE \; swap-pane -d -t ':.{next}'
bind -T MOVE -N 'move pane to previous position'   {key/previous/upp}  switch-client -T MOVE \; swap-pane -d -t ':.{previous}'
bind -T MOVE -N 'move pane left'                   {key/left/upp}      switch-client -T MOVE \; swap-pane -d -t ':.{left-of}'
bind -T MOVE -N 'move pane down'                   {key/down/upp}      switch-client -T MOVE \; swap-pane -d -t ':.{down-of}'
bind -T MOVE -N 'move pane up'                     {key/up/upp}        switch-client -T MOVE \; swap-pane -d -t ':.{up-of}'
bind -T MOVE -N 'move pane right'                  {key/right/upp}     switch-client -T MOVE \; swap-pane -d -t ':.{right-of}'
bind -T MOVE -N 'move pane to window 1'            {key/1}             switch-client -T MOVE \; run "tmux-move-pane-window-index 1"
bind -T MOVE -N 'move pane to window 2'            {key/2}             switch-client -T MOVE \; run "tmux-move-pane-window-index 2"
bind -T MOVE -N 'move pane to window 3'            {key/3}             switch-client -T MOVE \; run "tmux-move-pane-window-index 3"
bind -T MOVE -N 'move pane to window 4'            {key/4}             switch-client -T MOVE \; run "tmux-move-pane-window-index 4"
bind -T MOVE -N 'move pane to window 5'            {key/5}             switch-client -T MOVE \; run "tmux-move-pane-window-index 5"
bind -T MOVE -N 'move pane to window 6'            {key/6}             switch-client -T MOVE \; run "tmux-move-pane-window-index 6"
bind -T MOVE -N 'move pane to window 7'            {key/7}             switch-client -T MOVE \; run "tmux-move-pane-window-index 7"
bind -T MOVE -N 'move pane to window 8'            {key/8}             switch-client -T MOVE \; run "tmux-move-pane-window-index 8"
bind -T MOVE -N 'move pane to window 9'            {key/9}             switch-client -T MOVE \; run "tmux-move-pane-window-index 9"
bind -T MOVE -N 'move pane to window 10'           {key/0}             switch-client -T MOVE \; run "tmux-move-pane-window-index 10"

# resize mode
bind           -N 'enter pane resize mode'   {key/resize/upp} switch-client -T RESIZE
bind -T RESIZE -N 'list keys'              M-{key/?}          list-keys -T RESIZE -a -N
bind -T RESIZE -N 'resize pane left'         {key/left/upp}   switch-client -T RESIZE \; resize-pane -L 3
bind -T RESIZE -N 'resize pane down'         {key/down/upp}   switch-client -T RESIZE \; resize-pane -D 3
bind -T RESIZE -N 'resize pane up'           {key/up/upp}     switch-client -T RESIZE \; resize-pane -U 3
bind -T RESIZE -N 'resize pane right'        {key/right/upp}  switch-client -T RESIZE \; resize-pane -R 3


## root key space

# no distraction modes
bind -T root -N 'toggle no distraction (window focus)'   M-{key/space/Space} run "tmux-toggle-no-distraction window"
bind -T root -N 'toggle no distraction (pane focus)'   M-C-{key/space/Space} run "tmux-toggle-no-distraction pane"

# extract menus

bind -T root -N 'extract token from window' C-{key/tabulation/Tab} display-menu -x W -y S -T 'Extract' \
'hash' {key/h} 'run -b "tmux-extract-tokens window hash"' \
'line' {key/l} 'run -b "tmux-extract-tokens window line"'  \
'path' {key/p} 'run -b "tmux-extract-tokens window path"'  \
'url'  {key/u} 'run -b "tmux-extract-tokens window url"'   \
'word' {key/w} 'run -b "tmux-extract-tokens window word"'  \
'WORD' {key/W} 'run -b "tmux-extract-tokens window WORD"'

bind -T root -N 'extract token from pane' C-S-{key/tabulation/Tab} display-menu -x P -y P -T 'Extract' \
'hash' {key/h} 'run -b "tmux-extract-tokens pane hash"' \
'line' {key/l} 'run -b "tmux-extract-tokens pane line"'  \
'path' {key/p} 'run -b "tmux-extract-tokens pane path"'  \
'url'  {key/u} 'run -b "tmux-extract-tokens pane url"'   \
'word' {key/w} 'run -b "tmux-extract-tokens pane word"'  \
'WORD' {key/W} 'run -b "tmux-extract-tokens pane WORD"'


## copy mode

bind -T copy-mode-vi -N 'cancel'    C-{key/interrupt/low} send-keys -X cancel
bind -T copy-mode-vi -N 'cancel'      {key/quit/low}      send-keys -X cancel
bind -T copy-mode-vi -N 'list keys' M-{key/?}             list-keys -T copy-mode-vi -a -N

# selection
bind -T copy-mode-vi -N 'select'             {key/select}        send-keys -X begin-selection
bind -T copy-mode-vi -N 'select line'        {key/select_line}   send-keys -X select-line
bind -T copy-mode-vi -N 'select region'    C-{key/select/low}    send-keys -X rectangle-toggle
bind -T copy-mode-vi -N 'cancel selection'   {key/escape/Escape} send-keys -X clear-selection

# selection actions
bind -T copy-mode-vi -N 'paste selection' {key/return/Enter} send-keys -X copy-pipe-and-cancel "tmux paste-buffer"
%if #{DISPLAY}
bind -T copy-mode-vi -N 'search selection' C-{key/search/low} send-keys -X copy-pipe-and-cancel "xargs -I {} tmux run-shell 'xdg-open https://www.google.com/search?q=\"{}\" > /dev/null'"
bind -T copy-mode-vi -N 'open selection'   C-{key/open/low}   send-keys -X copy-pipe-and-cancel "xargs -I {} tmux run-shell 'xdg-open \"{}\" > /dev/null'"
bind -T copy-mode-vi -N 'copy selection'     {key/yank/low}   send-keys -X copy-pipe-and-cancel "xargs -I {} wl-copy {}"
%else
bind -T copy-mode-vi -N 'copy selection' {key/yank/low}   send-keys -X copy-selection-and-cancel
%endif

# navigation
bind -T copy-mode-vi -N 'scroll page up'                       C-{key/scroll_page_up/low}        send-keys -X page-up
bind -T copy-mode-vi -N 'scroll page down'                     C-{key/scroll_page_down/low}      send-keys -X page-down
bind -T copy-mode-vi -N 'scroll up'                            C-{key/scroll_up/low}             send-keys -X halfpage-up
bind -T copy-mode-vi -N 'scroll down'                          C-{key/scroll_down/low}           send-keys -X halfpage-down
bind -T copy-mode-vi -N 'scroll one line up'                   C-{key/scroll_line_up/low}        send-keys -X scroll-up
bind -T copy-mode-vi -N 'scroll one line down'                 C-{key/scroll_line_down/low}      send-keys -X scroll-down
bind -T copy-mode-vi -N 'cursor left'                            {key/left}                      send-keys -X cursor-left
bind -T copy-mode-vi -N 'cursor down'                            {key/down}                      send-keys -X cursor-down
bind -T copy-mode-vi -N 'cursor up'                              {key/up}                        send-keys -X cursor-up
bind -T copy-mode-vi -N 'cursor right'                           {key/right}                     send-keys -X cursor-right
bind -T copy-mode-vi -N 'go to history top'                      {key/goto_top}                  send-keys -X history-top
bind -T copy-mode-vi -N 'go to history bottom'                   {key/goto_bottom}               send-keys -X history-bottom
bind -T copy-mode-vi -N 'go to top line'                         {key/line_top}                  send-keys -X top-line
bind -T copy-mode-vi -N 'go to middle line'                      {key/line_middle}               send-keys -X middle-line
bind -T copy-mode-vi -N 'go to bottom line'                      {key/line_bottom}               send-keys -X bottom-line
bind -T copy-mode-vi -N 'go to start of line'                    {key/line_start}                send-keys -X start-of-line
bind -T copy-mode-vi -N 'go to first character of line'          {key/line_first_char}           send-keys -X back-to-indentation
bind -T copy-mode-vi -N 'go to end of line'                      '{key/line_end}'                send-keys -X end-of-line
bind -T copy-mode-vi -N 'set mark'                               {key/mark_set}                  send-keys -X set-mark
bind -T copy-mode-vi -N 'jump to mark'                           "{key/mark_jump}"               send-keys -X jump-to-mark
bind -T copy-mode-vi -N 'go to start of previous word'           {key/word_previous_start}       send-keys -X previous-word
bind -T copy-mode-vi -N 'go to start of previous word (space)'   {key/word_space_previous_start} send-keys -X previous-space
bind -T copy-mode-vi -N 'go to end of next word'                 {key/word_next_end}             send-keys -X next-word-end
bind -T copy-mode-vi -N 'go to end of next word (space)'         {key/word_space_next_end}       send-keys -X next-space-end
bind -T copy-mode-vi -N 'go to start of next word'               {key/word_next_start}           send-keys -X next-word
bind -T copy-mode-vi -N 'go to start of next word (space)'       {key/word_space_next_start}     send-keys -X next-space
bind -T copy-mode-vi -N 'go to char forward'                     {key/char_forward}              command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\""
bind -T copy-mode-vi -N 'go to char backward'                    {key/char_backward}             command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\""
bind -T copy-mode-vi -N 'go before char forward'                 {key/char_forward_before}       command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\""
bind -T copy-mode-vi -N 'go before char backward'                {key/char_backward_before}      command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\""
bind -T copy-mode-vi -N 'repeat char go to'                      \{key/char_repeat}              send-keys -X jump-again
bind -T copy-mode-vi -N 'repeat char go to in reverse'           {key/char_repeat_reverse}       send-keys -X jump-reverse
bind -T copy-mode-vi -N 'go to previous paragraph'               \{key/paragraph_previous}       send-keys -X previous-paragraph
bind -T copy-mode-vi -N 'go to next paragraph'                   \{key/paragraph_next}           send-keys -X next-paragraph
bind -T copy-mode-vi -N 'go to matching bracket'                 {key/matching_item}             send-keys -X next-matching-bracket
bind -T copy-mode-vi -N 'go to other end of selection'           {key/selection_other_end}       send-keys -X other-end
bind -T copy-mode-vi -N 'go to line'                             {key/:}                         command-prompt -p "(goto line)" "send -X goto-line \"%%%\""
bind -T copy-mode-vi -N 'search forward'                         {key/search_forward}            command-prompt -p "(search down)" "send -X search-forward \"%%%\""
bind -T copy-mode-vi -N 'search backward'                        {key/search_backward}           command-prompt -p "(search up)" "send -X search-backward \"%%%\""
bind -T copy-mode-vi -N 'repeat search'                          {key/search_repeat}             send-keys -X search-again
bind -T copy-mode-vi -N 'repeat search in reverse'               {key/search_repeat_reverse}     send-keys -X search-reverse
bind -T copy-mode-vi -N 'repeat 1'                               {key/1}                         command-prompt -N -I 1 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi -N 'repeat 2'                               {key/2}                         command-prompt -N -I 2 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi -N 'repeat 3'                               {key/3}                         command-prompt -N -I 3 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi -N 'repeat 4'                               {key/4}                         command-prompt -N -I 4 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi -N 'repeat 5'                               {key/5}                         command-prompt -N -I 5 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi -N 'repeat 6'                               {key/6}                         command-prompt -N -I 6 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi -N 'repeat 7'                               {key/7}                         command-prompt -N -I 7 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi -N 'repeat 8'                               {key/8}                         command-prompt -N -I 8 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi -N 'repeat 9'                               {key/9}                         command-prompt -N -I 9 -p (repeat) "send -N \"%%%\""
