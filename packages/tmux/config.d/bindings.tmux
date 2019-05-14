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
bind M-h split-window -h -f -l 80 "printf 'help\n\n'; help"
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
bind -r C-a switch-client -l
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

bind c new-window -c "${HOME}"
bind r command-prompt -I '#{window_name}' "rename-window '%%'"
bind x confirm-before -p 'kill-window "#{window_name}"? (y/n)' kill-window

# select
bind    w choose-tree -Z -w -F '#{?pane_format,#{pane_current_command},#{?window_format,#{window_name},}}' -f "#{!=:0,#{session_attached}}" -O index
bind -r a select-window -t :{last}
bind -r n select-window -t :{next}
bind -r l select-window -t :{next}
bind -r p select-window -t :{previous}
bind -r h select-window -t :{previous}
bind    1 select-window -t :=1
bind    2 select-window -t :=2
bind    3 select-window -t :=3
bind    4 select-window -t :=4
bind    5 select-window -t :=5
bind    6 select-window -t :=6
bind    7 select-window -t :=7
bind    8 select-window -t :=8
bind    9 select-window -t :=9
bind    0 select-window -t :=10

# split
bind v split-window -h -c '#{pane_current_path}'
bind s split-window -v -c '#{pane_current_path}'

# move mode
bind      m switch-client -T m
bind -T m a switch-client -T m \; swap-window -t :{last}
bind -T m n switch-client -T m \; swap-window -t :{next}
bind -T m l switch-client -T m \; swap-window -t :{next}
bind -T m p switch-client -T m \; swap-window -t :{previous}
bind -T m h switch-client -T m \; swap-window -t :{previous}
bind -T m 1 switch-client -T m \; run "~/.tmux/scripts/move_window_index.sh 1"
bind -T m 2 switch-client -T m \; run "~/.tmux/scripts/move_window_index.sh 2"
bind -T m 3 switch-client -T m \; run "~/.tmux/scripts/move_window_index.sh 3"
bind -T m 4 switch-client -T m \; run "~/.tmux/scripts/move_window_index.sh 4"
bind -T m 5 switch-client -T m \; run "~/.tmux/scripts/move_window_index.sh 5"
bind -T m 6 switch-client -T m \; run "~/.tmux/scripts/move_window_index.sh 6"
bind -T m 7 switch-client -T m \; run "~/.tmux/scripts/move_window_index.sh 7"
bind -T m 8 switch-client -T m \; run "~/.tmux/scripts/move_window_index.sh 8"
bind -T m 9 switch-client -T m \; run "~/.tmux/scripts/move_window_index.sh 9"
bind -T m 0 switch-client -T m \; run "~/.tmux/scripts/move_window_index.sh 10"

# layout mode
bind      y switch-client -T y
bind -T y 1 switch-client -T y \; select-layout even-horizontal
bind -T y 2 switch-client -T y \; select-layout main-vertical
bind -T y 3 switch-client -T y \; select-layout even-vertical
bind -T y 4 switch-client -T y \; select-layout main-horizontal
bind -T y 5 switch-client -T y \; select-layout tiled


## panes management (uppercase)

bind C split-window -h -c '#{pane_current_path}'
bind X if '[ #{window_panes} -ne 1 ]' kill-pane 'confirm-before -p "kill-window \"#{window_name}\"? (y/n)" kill-window'
bind Z resize-pane -Z
bind G display-panes

# select
bind -r A select-pane -t :.{last}
bind -r N select-pane -t :.{next}
bind -r P select-pane -t :.{previous}
bind -r H select-pane -t :.{left-of}
bind -r J select-pane -t :.{down-of}
bind -r K select-pane -t :.{up-of}
bind -r L select-pane -t :.{right-of}

bind -T root M-a run "~/.tmux/scripts/select_pane_vim.sh a"
bind -T root M-h run "~/.tmux/scripts/select_pane_vim.sh h"
bind -T root M-j run "~/.tmux/scripts/select_pane_vim.sh j"
bind -T root M-k run "~/.tmux/scripts/select_pane_vim.sh k"
bind -T root M-l run "~/.tmux/scripts/select_pane_vim.sh l"

# respawn
bind BSpace respawn-pane
bind M-BSpace respawn-pane -k

# move mode
bind      M switch-client -T M
bind -T M c switch-client -T M \; break-pane
bind -T M a switch-client -T M \; move-pane -h -t :{last}
bind -T M n switch-client -T M \; move-pane -h -t :{next}
bind -T M l switch-client -T M \; move-pane -h -t :{next}
bind -T M p switch-client -T M \; move-pane -h -t :{previous}
bind -T M h switch-client -T M \; move-pane -h -t :{previous}
bind -T M A switch-client -T M \; swap-pane -d -t :.{last}
bind -T M N switch-client -T M \; swap-pane -d -t :.{next}
bind -T M P switch-client -T M \; swap-pane -d -t :.{previous}
bind -T M H switch-client -T M \; swap-pane -d -t :.{left-of}
bind -T M J switch-client -T M \; swap-pane -d -t :.{down-of}
bind -T M K switch-client -T M \; swap-pane -d -t :.{up-of}
bind -T M L switch-client -T M \; swap-pane -d -t :.{right-of}
bind -T M 1 switch-client -T M \; run "~/.tmux/scripts/move_pane_window_index.sh 1"
bind -T M 2 switch-client -T M \; run "~/.tmux/scripts/move_pane_window_index.sh 2"
bind -T M 3 switch-client -T M \; run "~/.tmux/scripts/move_pane_window_index.sh 3"
bind -T M 4 switch-client -T M \; run "~/.tmux/scripts/move_pane_window_index.sh 4"
bind -T M 5 switch-client -T M \; run "~/.tmux/scripts/move_pane_window_index.sh 5"
bind -T M 6 switch-client -T M \; run "~/.tmux/scripts/move_pane_window_index.sh 6"
bind -T M 7 switch-client -T M \; run "~/.tmux/scripts/move_pane_window_index.sh 7"
bind -T M 8 switch-client -T M \; run "~/.tmux/scripts/move_pane_window_index.sh 8"
bind -T M 9 switch-client -T M \; run "~/.tmux/scripts/move_pane_window_index.sh 9"
bind -T M 0 switch-client -T M \; run "~/.tmux/scripts/move_pane_window_index.sh 10"

# resize mode
bind      S switch-client -T S
bind -T S H switch-client -T S \; resize-pane -L 3
bind -T S J switch-client -T S \; resize-pane -D 3
bind -T S K switch-client -T S \; resize-pane -U 3
bind -T S L switch-client -T S \; resize-pane -R 3


## root key space

# no distraction modes
bind -T root M-Space   run "~/.tmux/scripts/toggle_no_distraction.sh soft"
bind -T root M-C-Space run "~/.tmux/scripts/toggle_no_distraction.sh hard"

# extract tokens
bind -T root C-Tab switch-client -T E
bind -T E        h run "~/.tmux/scripts/extract_tokens.sh hashes"
bind -T E        l run "~/.tmux/scripts/extract_tokens.sh lines"
bind -T E        p run "~/.tmux/scripts/extract_tokens.sh paths"
bind -T E        u run "~/.tmux/scripts/extract_tokens.sh urls"
bind -T E        w run "~/.tmux/scripts/extract_tokens.sh words"
bind -T E        W run "~/.tmux/scripts/extract_tokens.sh WORDS"


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
