# remove all default bindings
unbind -T prefix -a
unbind -T root -a
unbind -T copy-mode -a
unbind -T copy-mode-vi -a


## general

# prefix
bind C-Space send-prefix

# reload configuration
bind M-R source-file ~/.tmux.conf \; \
         display-message "Configuration reloaded"

# detach client
bind   q detach-client
bind C-q detach-client

bind   : command-prompt
bind   ? list-keys
bind M-m show-messages
bind M-a run "~/.tmux/scripts/toggle_monitor_activity.sh '#{socket_path}' '#{session_id}' '#{window_id}'"
bind M-s run "~/.tmux/scripts/toggle_monitor_silence.sh '#{socket_path}' '#{session_id}' '#{window_id}'"
bind M-b choose-buffer -Z -F '#{buffer_sample}' -O time
bind M-l clear-history \; \
         display-message "Pane history cleared"

# copy/paste
bind Space copy-mode
bind Enter paste-buffer


## sessions management (Ctrl)

bind C-c new-session -c "${HOME}"
bind C-r command-prompt -I '#{session_name}' "rename-session '%%'"
bind C-x confirm-before -p 'kill-session "#{session_name}"? (y/n)' kill-session

# select
%if #{TMUX_ENV}
bind    C-s choose-tree -Z -s -w -F '#{?pane_format,#{pane_current_command},#{?window_format,#{window_name},}}' -O index
%else
bind    C-s choose-tree -Z -s -w -F '#{?pane_format,#{pane_current_command},#{window_name}}' -O index
%endif
bind -r C-a if '[ "#{client_last_session}" != "" ]' 'switch-client -l' 'switch-client -n'
bind -r C-n switch-client -n
bind -r C-j switch-client -n
bind -r C-p switch-client -p
bind -r C-k switch-client -p
bind    C-1 switch-client -t $0
bind    C-2 switch-client -t $1
bind    C-3 switch-client -t $2
bind    C-4 switch-client -t $3
bind    C-5 switch-client -t $4
bind    C-6 switch-client -t $5
bind    C-7 switch-client -t $6
bind    C-8 switch-client -t $7
bind    C-9 switch-client -t $8
bind    C-0 switch-client -t $9


## windows management (lowercase)

bind c new-window
bind r command-prompt -I '#{window_name}' "rename-window '%%'"
bind x confirm-before -p 'kill-window "#{window_name}"? (y/n)' kill-window

# select
bind    w choose-tree -Z -w -F '#{?pane_format,#{pane_current_command},#{?window_format,#{window_name},}}' -f "#{!=:0,#{session_attached}}" -O index
bind -r a last-window
bind -r n next-window
bind -r l next-window
bind -r p previous-window
bind -r h previous-window
bind    0 select-window -t :=10
bind    1 select-window -t :=1
bind    2 select-window -t :=2
bind    3 select-window -t :=3
bind    4 select-window -t :=4
bind    5 select-window -t :=5
bind    6 select-window -t :=6
bind    7 select-window -t :=7
bind    8 select-window -t :=8
bind    9 select-window -t :=9

# split
bind v split-window -h -c '#{pane_current_path}'
bind s split-window -v -c '#{pane_current_path}'

# move mode
bind      m switch-client -T ⓜ
bind -T ⓜ 0 switch-client -T ⓜ \; run "~/.tmux/scripts/move_window_index.sh 10"
bind -T ⓜ 1 switch-client -T ⓜ \; run "~/.tmux/scripts/move_window_index.sh 1"
bind -T ⓜ 2 switch-client -T ⓜ \; run "~/.tmux/scripts/move_window_index.sh 2"
bind -T ⓜ 3 switch-client -T ⓜ \; run "~/.tmux/scripts/move_window_index.sh 3"
bind -T ⓜ 4 switch-client -T ⓜ \; run "~/.tmux/scripts/move_window_index.sh 4"
bind -T ⓜ 5 switch-client -T ⓜ \; run "~/.tmux/scripts/move_window_index.sh 5"
bind -T ⓜ 6 switch-client -T ⓜ \; run "~/.tmux/scripts/move_window_index.sh 6"
bind -T ⓜ 7 switch-client -T ⓜ \; run "~/.tmux/scripts/move_window_index.sh 7"
bind -T ⓜ 8 switch-client -T ⓜ \; run "~/.tmux/scripts/move_window_index.sh 8"
bind -T ⓜ 9 switch-client -T ⓜ \; run "~/.tmux/scripts/move_window_index.sh 9"
bind -T ⓜ a swap-window -t :{last} \; switch-client -T ⓜ
bind -T ⓜ n swap-window -t + \; switch-client -T ⓜ
bind -T ⓜ l swap-window -t + \; switch-client -T ⓜ
bind -T ⓜ p swap-window -t - \; switch-client -T ⓜ
bind -T ⓜ h swap-window -t - \; switch-client -T ⓜ

# layout mode
bind      y switch-client -T ⓨ
bind -T ⓨ 1 select-layout even-horizontal \; switch-client -T ⓨ
bind -T ⓨ 2 select-layout main-vertical \; switch-client -T ⓨ
bind -T ⓨ 3 select-layout even-vertical \; switch-client -T ⓨ
bind -T ⓨ 4 select-layout main-horizontal \; switch-client -T ⓨ
bind -T ⓨ 5 select-layout tiled \; switch-client -T ⓨ


## panes management (uppercase)

bind X if '[ #{window_panes} -ne 1 ]' kill-pane 'confirm-before -p "kill-window \"#{window_name}\"? (y/n)" kill-window'
bind Z resize-pane -Z
bind G display-panes

# select
bind -r A select-pane -l
bind -r H select-pane -L
bind -r J select-pane -D
bind -r K select-pane -U
bind -r L select-pane -R
bind -r N select-pane -t :.+
bind -r P select-pane -t :.-

bind -T root M-h run "~/.tmux/scripts/select_pane_vim.sh h"
bind -T root M-j run "~/.tmux/scripts/select_pane_vim.sh j"
bind -T root M-k run "~/.tmux/scripts/select_pane_vim.sh k"
bind -T root M-l run "~/.tmux/scripts/select_pane_vim.sh l"
bind -T root M-a run "~/.tmux/scripts/select_pane_vim.sh a"

# respawn
bind BSpace respawn-pane
bind M-BSpace respawn-pane -k

# move mode
bind      M switch-client -T Ⓜ
bind -T Ⓜ 0 switch-client -T Ⓜ \; run "~/.tmux/scripts/move_pane_window_index.sh 10"
bind -T Ⓜ 1 switch-client -T Ⓜ \; run "~/.tmux/scripts/move_pane_window_index.sh 1"
bind -T Ⓜ 2 switch-client -T Ⓜ \; run "~/.tmux/scripts/move_pane_window_index.sh 2"
bind -T Ⓜ 3 switch-client -T Ⓜ \; run "~/.tmux/scripts/move_pane_window_index.sh 3"
bind -T Ⓜ 4 switch-client -T Ⓜ \; run "~/.tmux/scripts/move_pane_window_index.sh 4"
bind -T Ⓜ 5 switch-client -T Ⓜ \; run "~/.tmux/scripts/move_pane_window_index.sh 5"
bind -T Ⓜ 6 switch-client -T Ⓜ \; run "~/.tmux/scripts/move_pane_window_index.sh 6"
bind -T Ⓜ 7 switch-client -T Ⓜ \; run "~/.tmux/scripts/move_pane_window_index.sh 7"
bind -T Ⓜ 8 switch-client -T Ⓜ \; run "~/.tmux/scripts/move_pane_window_index.sh 8"
bind -T Ⓜ 9 switch-client -T Ⓜ \; run "~/.tmux/scripts/move_pane_window_index.sh 9"
bind -T Ⓜ a move-pane -h -t :{last} \; switch-client -T Ⓜ
bind -T Ⓜ h move-pane -h -t :{previous} \; switch-client -T Ⓜ
bind -T Ⓜ l move-pane -h -t :{next} \; switch-client -T Ⓜ
bind -T Ⓜ n move-pane -h -t :{next} \; switch-client -T Ⓜ
bind -T Ⓜ p move-pane -h -t :{previous} \; switch-client -T Ⓜ
bind -T Ⓜ A swap-pane -d -t .{last} \; switch-client -T Ⓜ
bind -T Ⓜ H swap-pane -d -t .{left-of} \; switch-client -T Ⓜ
bind -T Ⓜ J swap-pane -d -t .{down-of} \; switch-client -T Ⓜ
bind -T Ⓜ K swap-pane -d -t .{up-of} \; switch-client -T Ⓜ
bind -T Ⓜ L swap-pane -d -t .{right-of} \; switch-client -T Ⓜ
bind -T Ⓜ N swap-pane -D \; switch-client -T Ⓜ
bind -T Ⓜ P swap-pane -U \; switch-client -T Ⓜ

# resize mode
bind      S switch-client -T Ⓢ
bind -T Ⓢ H resize-pane -L 3 \; switch-client -T Ⓢ
bind -T Ⓢ J resize-pane -D 3 \; switch-client -T Ⓢ
bind -T Ⓢ K resize-pane -U 3 \; switch-client -T Ⓢ
bind -T Ⓢ L resize-pane -R 3 \; switch-client -T Ⓢ


## root key space

# no distraction modes
bind -T root M-Space   run "~/.tmux/scripts/toggle_no_distraction.sh soft"
bind -T root M-C-Space run "~/.tmux/scripts/toggle_no_distraction.sh hard"

# extract tokens
bind -T root C-Tab switch-client -T Ⓔ
bind -T Ⓔ        h run "~/.tmux/scripts/extract_tokens.sh hashes"
bind -T Ⓔ        l run "~/.tmux/scripts/extract_tokens.sh lines"
bind -T Ⓔ        p run "~/.tmux/scripts/extract_tokens.sh paths"
bind -T Ⓔ        u run "~/.tmux/scripts/extract_tokens.sh urls"
bind -T Ⓔ        w run "~/.tmux/scripts/extract_tokens.sh words"
bind -T Ⓔ        W run "~/.tmux/scripts/extract_tokens.sh WORDS"


## copy mode

bind -T copy-mode-vi C-c send-keys -X cancel
bind -T copy-mode-vi   q send-keys -X cancel

# selection
bind -T copy-mode-vi      v send-keys -X begin-selection
bind -T copy-mode-vi      V send-keys -X select-line
bind -T copy-mode-vi    C-v send-keys -X rectangle-toggle
bind -T copy-mode-vi Escape send-keys -X clear-selection

# selection actions
bind -T copy-mode-vi  Enter send-keys -X copy-pipe-and-cancel "tmux paste-buffer"
%if #{DISPLAY}
bind -T copy-mode-vi    C-s send-keys -X copy-pipe-and-cancel "xargs -I {} tmux run-shell 'xdg-open https://www.google.com/search?q=\"{}\" > /dev/null'"
bind -T copy-mode-vi    C-o send-keys -X copy-pipe-and-cancel "xargs -I {} tmux run-shell 'xdg-open \"{}\" > /dev/null'"
bind -T copy-mode-vi      y send-keys -X copy-pipe-and-cancel "xargs -I {} wl-copy {}"
%else
bind -T copy-mode-vi      y send-keys -X copy-selection-and-cancel
%endif

# navigation
bind -T copy-mode-vi C-b send-keys -X page-up
bind -T copy-mode-vi C-f send-keys -X page-down
bind -T copy-mode-vi C-u send-keys -X halfpage-up
bind -T copy-mode-vi C-d send-keys -X halfpage-down
bind -T copy-mode-vi C-e send-keys -X scroll-down
bind -T copy-mode-vi C-y send-keys -X scroll-up
bind -T copy-mode-vi   h send-keys -X cursor-left
bind -T copy-mode-vi   j send-keys -X cursor-down
bind -T copy-mode-vi   k send-keys -X cursor-up
bind -T copy-mode-vi   l send-keys -X cursor-right
bind -T copy-mode-vi   g send-keys -X history-top
bind -T copy-mode-vi   G send-keys -X history-bottom
bind -T copy-mode-vi   H send-keys -X top-line
bind -T copy-mode-vi   M send-keys -X middle-line
bind -T copy-mode-vi   L send-keys -X bottom-line
bind -T copy-mode-vi   0 send-keys -X start-of-line
bind -T copy-mode-vi   ^ send-keys -X back-to-indentation
bind -T copy-mode-vi '$' send-keys -X end-of-line
bind -T copy-mode-vi   b send-keys -X previous-word
bind -T copy-mode-vi   B send-keys -X previous-space
bind -T copy-mode-vi   e send-keys -X next-word-end
bind -T copy-mode-vi   E send-keys -X next-space-end
bind -T copy-mode-vi   w send-keys -X next-word
bind -T copy-mode-vi   W send-keys -X next-space
bind -T copy-mode-vi   f command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\""
bind -T copy-mode-vi   F command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\""
bind -T copy-mode-vi   t command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\""
bind -T copy-mode-vi   T command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\""
bind -T copy-mode-vi  \; send-keys -X jump-again
bind -T copy-mode-vi   , send-keys -X jump-reverse
bind -T copy-mode-vi   { send-keys -X previous-paragraph
bind -T copy-mode-vi   } send-keys -X next-paragraph
bind -T copy-mode-vi   o send-keys -X other-end
bind -T copy-mode-vi   : command-prompt -p "(goto line)" "send -X goto-line \"%%%\""
bind -T copy-mode-vi   / command-prompt -p "(search down)" "send -X search-forward \"%%%\""
bind -T copy-mode-vi   ? command-prompt -p "(search up)" "send -X search-backward \"%%%\""
bind -T copy-mode-vi   n send-keys -X search-again
bind -T copy-mode-vi   N send-keys -X search-reverse
bind -T copy-mode-vi   1 command-prompt -N -I 1 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   2 command-prompt -N -I 2 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   3 command-prompt -N -I 3 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   4 command-prompt -N -I 4 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   5 command-prompt -N -I 5 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   6 command-prompt -N -I 6 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   7 command-prompt -N -I 7 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   8 command-prompt -N -I 8 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi   9 command-prompt -N -I 9 -p (repeat) "send -N \"%%%\""
