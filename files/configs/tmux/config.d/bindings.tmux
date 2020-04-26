# remove all default bindings
unbind -T prefix -a
unbind -T root -a
unbind -T copy-mode -a
unbind -T copy-mode-vi -a


## general

# reload configuration
bind M-{key/reload_config} source-file {dir/config}/tmux/tmux.conf \; \
                           display-message "Configuration reloaded"

# detach client
bind   {key/quit/low} detach-client
bind C-{key/quit/low} detach-client

bind   {key/command} command-prompt
bind   {key/?}       list-keys
bind M-{key/m}       show-messages
bind M-{key/a}       run "tmux-toggle-monitor-activity '#{socket_path}' '#{session_id}' '#{window_id}'"
bind M-{key/s}       run "tmux-toggle-monitor-silence '#{socket_path}' '#{session_id}' '#{window_id}'"
bind M-{key/buffer}  choose-buffer -Z -F '#{buffer_sample}' -O time
bind M-{key/d}       split-window -h -f -l 80 "printf 'documentation\n\n'; documentation-all || sleep 2"
bind M-{key/clear}   clear-history \; \
                     display-message "Pane history cleared"

# copy/paste
bind {key/space/Space}  copy-mode
bind {key/return/Enter} paste-buffer


## sessions management (Ctrl)

bind C-{key/create/low} new-session -c "${HOME}"
bind C-{key/rename/low} command-prompt "rename-session '%%'"
bind C-{key/close/low}  confirm-before -p 'kill-session "#{session_name}"? (y/n)' kill-session

# select
%if #{TMUX_ENV}
bind C-{key/session/low} choose-tree -Z -s -w -F '#{?pane_format,#{pane_current_command},#{?window_format,#{window_name},}}' -O index
%else
bind C-{key/session/low} choose-tree -Z -s -w -F '#{?pane_format,#{pane_current_command},#{window_name}}' -O index
%endif
bind C-{key/alternate/low} switch-client -l
bind C-{key/next/low}      switch-client -n
bind C-{key/down/low}      switch-client -n
bind C-{key/previous/low}  switch-client -p
bind C-{key/up/low}        switch-client -p
bind C-{key/1}             switch-client -t $0
bind C-{key/2}             switch-client -t $1
bind C-{key/3}             switch-client -t $2
bind C-{key/4}             switch-client -t $3
bind C-{key/5}             switch-client -t $4
bind C-{key/6}             switch-client -t $5
bind C-{key/7}             switch-client -t $6
bind C-{key/8}             switch-client -t $7
bind C-{key/9}             switch-client -t $8
bind C-{key/0}             switch-client -t $9


## windows management (lowercase)

bind {key/create/low} new-window -c "${HOME}"
bind {key/rename/low} command-prompt "rename-window '%%'"
bind {key/close/low}  confirm-before -p 'kill-window "#{window_name}"? (y/n)' kill-window

# select
bind {key/window/low}    choose-tree -Z -w -F '#{?pane_format,#{pane_current_command},#{?window_format,#{window_name},}}' -f "#{!=:0,#{session_attached}}" -O index
bind {key/alternate/low} select-window -t ':{last}'
bind {key/next/low}      select-window -t ':{next}'
bind {key/right/low}     select-window -t ':{next}'
bind {key/previous/low}  select-window -t ':{previous}'
bind {key/left/low}      select-window -t ':{previous}'
bind {key/1}             select-window -t :=1
bind {key/2}             select-window -t :=2
bind {key/3}             select-window -t :=3
bind {key/4}             select-window -t :=4
bind {key/5}             select-window -t :=5
bind {key/6}             select-window -t :=6
bind {key/7}             select-window -t :=7
bind {key/8}             select-window -t :=8
bind {key/9}             select-window -t :=9
bind {key/0}             select-window -t :=10

# split
bind {key/split_vertical/low}   split-window -h -c '#{pane_current_path}'
bind {key/split_horizontal/low} split-window -v -c '#{pane_current_path}'

# move mode
bind         {key/move/low}      switch-client -T move
bind -T move {key/alternate/low} switch-client -T move \; swap-window -d -t ':{last}'
bind -T move {key/next/low}      switch-client -T move \; swap-window -d -t ':{next}'
bind -T move {key/right/low}     switch-client -T move \; swap-window -d -t ':{next}'
bind -T move {key/previous/low}  switch-client -T move \; swap-window -d -t ':{previous}'
bind -T move {key/left/low}      switch-client -T move \; swap-window -d -t ':{previous}'
bind -T move {key/1}             switch-client -T move \; run "tmux-move-window-index 1"
bind -T move {key/2}             switch-client -T move \; run "tmux-move-window-index 2"
bind -T move {key/3}             switch-client -T move \; run "tmux-move-window-index 3"
bind -T move {key/4}             switch-client -T move \; run "tmux-move-window-index 4"
bind -T move {key/5}             switch-client -T move \; run "tmux-move-window-index 5"
bind -T move {key/6}             switch-client -T move \; run "tmux-move-window-index 6"
bind -T move {key/7}             switch-client -T move \; run "tmux-move-window-index 7"
bind -T move {key/8}             switch-client -T move \; run "tmux-move-window-index 8"
bind -T move {key/9}             switch-client -T move \; run "tmux-move-window-index 9"
bind -T move {key/0}             switch-client -T move \; run "tmux-move-window-index 10"

# layout mode
bind           {key/layout/low} switch-client -T layout
bind -T layout {key/1}          switch-client -T layout \; select-layout even-horizontal
bind -T layout {key/2}          switch-client -T layout \; select-layout main-vertical
bind -T layout {key/3}          switch-client -T layout \; select-layout even-vertical
bind -T layout {key/4}          switch-client -T layout \; select-layout main-horizontal
bind -T layout {key/5}          switch-client -T layout \; select-layout tiled


## panes management (uppercase)

bind {key/create/upp} split-window -h -c '#{pane_current_path}'
bind {key/close/upp}  if '[ #{window_panes} -ne 1 ]' kill-pane 'confirm-before -p "kill-window \"#{window_name}\"? (y/n)" kill-window'
bind {key/zoom/upp}   resize-pane -Z
bind {key/G}          display-panes

# select
bind {key/alternate/upp} select-pane -t ':.{last}'
bind {key/next/upp}      select-pane -t ':.{next}'
bind {key/previous/upp}  select-pane -t ':.{previous}'
bind {key/left/upp}      select-pane -t ':.{left-of}'
bind {key/down/upp}      select-pane -t ':.{down-of}'
bind {key/up/upp}        select-pane -t ':.{up-of}'
bind {key/right/upp}     select-pane -t ':.{right-of}'

bind -T root M-{key/alternate/low} run "tmux-select-pane-vim a"
bind -T root M-{key/left/low}      run "tmux-select-pane-vim h"
bind -T root M-{key/down/low}      run "tmux-select-pane-vim j"
bind -T root M-{key/up/low}        run "tmux-select-pane-vim k"
bind -T root M-{key/right/low}     run "tmux-select-pane-vim l"

# respawn
bind   {key/backspace/BSpace} respawn-pane
bind M-{key/backspace/BSpace} respawn-pane -k

# move mode
bind         {key/move/upp}      switch-client -T MOVE
bind -T MOVE {key/create/low}    switch-client -T MOVE \; break-pane
bind -T MOVE {key/alternate/low} switch-client -T MOVE \; move-pane -h -t ':{last}'
bind -T MOVE {key/next/low}      switch-client -T MOVE \; move-pane -h -t ':{next}'
bind -T MOVE {key/right/low}     switch-client -T MOVE \; move-pane -h -t ':{next}'
bind -T MOVE {key/previous/low}  switch-client -T MOVE \; move-pane -h -t ':{previous}'
bind -T MOVE {key/left/low}      switch-client -T MOVE \; move-pane -h -t ':{previous}'
bind -T MOVE {key/alternate/upp} switch-client -T MOVE \; swap-pane -d -t ':.{last}'
bind -T MOVE {key/next/upp}      switch-client -T MOVE \; swap-pane -d -t ':.{next}'
bind -T MOVE {key/previous/upp}  switch-client -T MOVE \; swap-pane -d -t ':.{previous}'
bind -T MOVE {key/left/upp}      switch-client -T MOVE \; swap-pane -d -t ':.{left-of}'
bind -T MOVE {key/down/upp}      switch-client -T MOVE \; swap-pane -d -t ':.{down-of}'
bind -T MOVE {key/up/upp}        switch-client -T MOVE \; swap-pane -d -t ':.{up-of}'
bind -T MOVE {key/right/upp}     switch-client -T MOVE \; swap-pane -d -t ':.{right-of}'
bind -T MOVE {key/1}             switch-client -T MOVE \; run "tmux-move-pane-window-index 1"
bind -T MOVE {key/2}             switch-client -T MOVE \; run "tmux-move-pane-window-index 2"
bind -T MOVE {key/3}             switch-client -T MOVE \; run "tmux-move-pane-window-index 3"
bind -T MOVE {key/4}             switch-client -T MOVE \; run "tmux-move-pane-window-index 4"
bind -T MOVE {key/5}             switch-client -T MOVE \; run "tmux-move-pane-window-index 5"
bind -T MOVE {key/6}             switch-client -T MOVE \; run "tmux-move-pane-window-index 6"
bind -T MOVE {key/7}             switch-client -T MOVE \; run "tmux-move-pane-window-index 7"
bind -T MOVE {key/8}             switch-client -T MOVE \; run "tmux-move-pane-window-index 8"
bind -T MOVE {key/9}             switch-client -T MOVE \; run "tmux-move-pane-window-index 9"
bind -T MOVE {key/0}             switch-client -T MOVE \; run "tmux-move-pane-window-index 10"

# resize mode
bind           {key/resize/upp} switch-client -T RESIZE
bind -T RESIZE {key/left/upp}   switch-client -T RESIZE \; resize-pane -L 3
bind -T RESIZE {key/down/upp}   switch-client -T RESIZE \; resize-pane -D 3
bind -T RESIZE {key/up/upp}     switch-client -T RESIZE \; resize-pane -U 3
bind -T RESIZE {key/right/upp}  switch-client -T RESIZE \; resize-pane -R 3


## root key space

# no distraction modes
bind -T root   M-{key/space/Space} run "tmux-toggle-no-distraction window"
bind -T root M-C-{key/space/Space} run "tmux-toggle-no-distraction pane"

# extract menus

bind -T root C-{key/tabulation/Tab} display-menu -x W -y S -T 'Extract' \
'hash' {key/h} 'run -b "tmux-extract-tokens window hash"' \
'line' {key/l} 'run -b "tmux-extract-tokens window line"'  \
'path' {key/p} 'run -b "tmux-extract-tokens window path"'  \
'url'  {key/u} 'run -b "tmux-extract-tokens window url"'   \
'word' {key/w} 'run -b "tmux-extract-tokens window word"'  \
'WORD' {key/W} 'run -b "tmux-extract-tokens window WORD"'

bind -T root C-S-{key/tabulation/Tab} display-menu -x P -y P -T 'Extract' \
'hash' {key/h} 'run -b "tmux-extract-tokens pane hash"' \
'line' {key/l} 'run -b "tmux-extract-tokens pane line"'  \
'path' {key/p} 'run -b "tmux-extract-tokens pane path"'  \
'url'  {key/u} 'run -b "tmux-extract-tokens pane url"'   \
'word' {key/w} 'run -b "tmux-extract-tokens pane word"'  \
'WORD' {key/W} 'run -b "tmux-extract-tokens pane WORD"'


## copy mode

bind -T copy-mode-vi C-{key/interrupt/low} send-keys -X cancel
bind -T copy-mode-vi   {key/quit/low}      send-keys -X cancel

# selection
bind -T copy-mode-vi   {key/select}        send-keys -X begin-selection
bind -T copy-mode-vi   {key/select_line}   send-keys -X select-line
bind -T copy-mode-vi C-{key/select/low}    send-keys -X rectangle-toggle
bind -T copy-mode-vi   {key/escape/Escape} send-keys -X clear-selection

# selection actions
bind -T copy-mode-vi {key/return/Enter} send-keys -X copy-pipe-and-cancel "tmux paste-buffer"
%if #{DISPLAY}
bind -T copy-mode-vi C-{key/search/low} send-keys -X copy-pipe-and-cancel "xargs -I {} tmux run-shell 'xdg-open https://www.google.com/search?q=\"{}\" > /dev/null'"
bind -T copy-mode-vi C-{key/open/low}   send-keys -X copy-pipe-and-cancel "xargs -I {} tmux run-shell 'xdg-open \"{}\" > /dev/null'"
bind -T copy-mode-vi   {key/yank/low}   send-keys -X copy-pipe-and-cancel "xargs -I {} wl-copy {}"
%else
bind -T copy-mode-vi   {key/yank/low}   send-keys -X copy-selection-and-cancel
%endif

# navigation
bind -T copy-mode-vi C-{key/scroll_page_up/low}        send-keys -X page-up
bind -T copy-mode-vi C-{key/scroll_page_down/low}      send-keys -X page-down
bind -T copy-mode-vi C-{key/scroll_up/low}             send-keys -X halfpage-up
bind -T copy-mode-vi C-{key/scroll_down/low}           send-keys -X halfpage-down
bind -T copy-mode-vi C-{key/scroll_line_up/low}        send-keys -X scroll-up
bind -T copy-mode-vi C-{key/scroll_line_down/low}      send-keys -X scroll-down
bind -T copy-mode-vi   {key/left}                      send-keys -X cursor-left
bind -T copy-mode-vi   {key/down}                      send-keys -X cursor-down
bind -T copy-mode-vi   {key/up}                        send-keys -X cursor-up
bind -T copy-mode-vi   {key/right}                     send-keys -X cursor-right
bind -T copy-mode-vi   {key/goto_top}                  send-keys -X history-top
bind -T copy-mode-vi   {key/goto_bottom}               send-keys -X history-bottom
bind -T copy-mode-vi   {key/line_top}                  send-keys -X top-line
bind -T copy-mode-vi   {key/line_middle}               send-keys -X middle-line
bind -T copy-mode-vi   {key/line_bottom}               send-keys -X bottom-line
bind -T copy-mode-vi   {key/line_start}                send-keys -X start-of-line
bind -T copy-mode-vi   {key/line_first_char}           send-keys -X back-to-indentation
bind -T copy-mode-vi   '{key/line_end}'                send-keys -X end-of-line
bind -T copy-mode-vi   {key/word_previous_start}       send-keys -X previous-word
bind -T copy-mode-vi   {key/word_space_previous_start} send-keys -X previous-space
bind -T copy-mode-vi   {key/word_next_end}             send-keys -X next-word-end
bind -T copy-mode-vi   {key/word_space_next_end}       send-keys -X next-space-end
bind -T copy-mode-vi   {key/word_next_start}           send-keys -X next-word
bind -T copy-mode-vi   {key/word_space_next_start}     send-keys -X next-space
bind -T copy-mode-vi   {key/char_forward}              command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\""
bind -T copy-mode-vi   {key/char_backward}             command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\""
bind -T copy-mode-vi   {key/char_forward_before}       command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\""
bind -T copy-mode-vi   {key/char_backward_before}      command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\""
bind -T copy-mode-vi   \{key/char_repeat}              send-keys -X jump-again
bind -T copy-mode-vi   {key/char_repeat_reverse}       send-keys -X jump-reverse
bind -T copy-mode-vi   \{key/paragraph_previous}       send-keys -X previous-paragraph
bind -T copy-mode-vi   \{key/paragraph_next}           send-keys -X next-paragraph
bind -T copy-mode-vi   {key/matching_item}             send-keys -X next-matching-bracket
bind -T copy-mode-vi   {key/selection_other_end}       send-keys -X other-end
bind -T copy-mode-vi   {key/:}                         command-prompt -p "(goto line)" "send -X goto-line \"%%%\""
bind -T copy-mode-vi   {key/search_forward}            command-prompt -p "(search down)" "send -X search-forward \"%%%\""
bind -T copy-mode-vi   {key/search_backward}           command-prompt -p "(search up)" "send -X search-backward \"%%%\""
bind -T copy-mode-vi   {key/search_repeat}             send-keys -X search-again
bind -T copy-mode-vi   {key/search_repeat_reverse}     send-keys -X search-reverse
bind -T copy-mode-vi   {key/1}                         command-prompt -N -I 1 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   {key/2}                         command-prompt -N -I 2 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   {key/3}                         command-prompt -N -I 3 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   {key/4}                         command-prompt -N -I 4 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   {key/5}                         command-prompt -N -I 5 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   {key/6}                         command-prompt -N -I 6 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   {key/7}                         command-prompt -N -I 7 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   {key/8}                         command-prompt -N -I 8 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   {key/9}                         command-prompt -N -I 9 -p (repeat) "send -N \"%%%\""
