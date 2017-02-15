# remove all default bindings
unbind -T prefix -a
unbind -T prefix -t vi-choice -a
unbind -T root -a

# prefix
bind C-a send-prefix

# reload configuration
bind M-r source-file ~/.tmux.conf \; \
         display-message "Configuration reloaded"

# detach client
bind d detach-client
bind C-d detach-client

# tools
bind : command-prompt
bind ? list-keys
bind M-m show-messages
bind M-a run "~/.tmux/scripts/toggle_monitor_activity.sh"
bind M-s run "~/.tmux/scripts/toggle_monitor_silence.sh"

# Do it live!
bind F1 run "~/.tmux/scripts/do_it_live.sh"

# sessions management (using Ctrl)
bind C-s choose-tree -S '#(echo #{session_name} | sed "s/^[0-9]*-//")' -W '#{window_name}'
bind C-a switch-client -l
bind -r C-n switch-client -n
bind -r C-p switch-client -p
bind C-0 switch-client -t 0-
bind C-1 switch-client -t 1-
bind C-2 switch-client -t 2-
bind C-3 switch-client -t 3-
bind C-4 switch-client -t 4-
bind C-5 switch-client -t 5-
bind C-6 switch-client -t 6-
bind C-7 switch-client -t 7-
bind C-8 switch-client -t 8-
bind C-9 switch-client -t 9-
bind C-c command-prompt -I '#{host_short}' "new-session -s '%%'"
bind C-r command-prompt -I '#{session_name}' "rename-session '%%'"
bind C-x confirm-before -p 'kill-session #(echo #{session_name} | sed "s/^[0-9]*-//")? (y/n)' kill-session

# windows management (no extra modifier key)
bind w choose-window -F '#{window_name}'
bind f command-prompt "find-window -N -F '#{window_name}' '%%'"
bind a last-window
bind -r n next-window
bind -r p previous-window
bind 0 select-window -t :=0
bind 1 select-window -t :=1
bind 2 select-window -t :=2
bind 3 select-window -t :=3
bind 4 select-window -t :=4
bind 5 select-window -t :=5
bind 6 select-window -t :=6
bind 7 select-window -t :=7
bind 8 select-window -t :=8
bind 9 select-window -t :=9
bind c command-prompt -I '#{host_short}' "new-window -n '%%'"
bind r command-prompt -I '#{window_name}' "rename-window '%%'"
bind x confirm-before -p "kill-window #{window_name}? (y/n)" kill-window
bind | run "~/.tmux/scripts/split_window_ssh.sh h"
bind \ run "~/.tmux/scripts/split_window_ssh.sh h"
bind - run "~/.tmux/scripts/split_window_ssh.sh v"
bind _ run "~/.tmux/scripts/split_window_ssh.sh v"

# panes management (using uppercase except for direct navigation)
bind Q display-panes
bind -r N select-pane -t :.+
bind -r P select-pane -t :.-
bind Z resize-pane -Z
bind X confirm-before -p "kill-pane #{pane_index}? (y/n)" kill-pane
bind { swap-pane -U
bind } swap-pane -D

bind ! select-layout even-horizontal
bind @ select-layout main-vertical
bind '#' select-layout even-vertical
bind '$' select-layout main-horizontal
bind % select-layout tiled

bind -T root M-h run "~/.tmux/scripts/select_pane_vim.sh h"
bind -T root M-j run "~/.tmux/scripts/select_pane_vim.sh j"
bind -T root M-k run "~/.tmux/scripts/select_pane_vim.sh k"
bind -T root M-l run "~/.tmux/scripts/select_pane_vim.sh l"
bind -T root M-a run "~/.tmux/scripts/select_pane_vim.sh a"

bind -T root M-H resize-pane -L 3
bind -T root M-J resize-pane -D 3
bind -T root M-K resize-pane -U 3
bind -T root M-L resize-pane -R 3


# copy mode management
bind [ copy-mode
bind ] paste-buffer
bind -t vi-copy v begin-selection
bind -t vi-copy y copy-selection

# choice mode management
bind -t vi-choice q cancel
bind -t vi-choice Escape cancel
bind -t vi-choice Enter choose
bind -t vi-choice o choose
bind -t vi-choice g start-of-list
bind -t vi-choice G end-of-list
bind -t vi-choice j down
bind -t vi-choice k up
bind -t vi-choice h tree-collapse
bind -t vi-choice l tree-expand
bind -t vi-choice H tree-collapse-all
bind -t vi-choice L tree-expand-all
bind -t vi-choice Space tree-toggle
