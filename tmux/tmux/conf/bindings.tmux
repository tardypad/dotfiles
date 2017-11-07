# remove all default bindings
unbind -T prefix -a
unbind -T root -a
unbind -T copy-mode -a

# prefix
bind C-a send-prefix

# reload configuration
bind M-r source-file ~/.tmux.conf \; \
         display-message "Configuration reloaded"

# detach client
bind   d detach-client
bind C-d detach-client

# tools
bind   : command-prompt
bind   ? list-keys
bind M-m show-messages
bind M-a run "~/.tmux/scripts/toggle_monitor_activity.sh"
bind M-s run "~/.tmux/scripts/toggle_monitor_silence.sh"

# temporary panels
bind M-t run "~/.tmux/scripts/temporary_interactive_panel.sh translate_shell 60"
bind M-h command-prompt -p 'help:' "run '~/.tmux/scripts/temporary_interactive_panel.sh \"help -i %%\" 80'"
bind M-n command-prompt -p 'notes:' "run '~/.tmux/scripts/temporary_interactive_panel.sh \"notes open %%\" 80'"

# Do it live!
bind F1 run "~/.tmux/scripts/do_it_live.sh"

# sessions management (using Ctrl)
bind    C-s run "~/.tmux/scripts/choose_tree_left.sh sessions"
bind    C-a switch-client -l
bind -r C-n switch-client -n
bind -r C-j switch-client -n
bind -r C-p switch-client -p
bind -r C-k switch-client -p
bind    C-0 switch-client -t 10-
bind    C-1 switch-client -t 01-
bind    C-2 switch-client -t 02-
bind    C-3 switch-client -t 03-
bind    C-4 switch-client -t 04-
bind    C-5 switch-client -t 05-
bind    C-6 switch-client -t 06-
bind    C-7 switch-client -t 07-
bind    C-8 switch-client -t 08-
bind    C-9 switch-client -t 09-
bind    C-c command-prompt -I '#{host_short}' "new-session -s '%%'"
bind    C-r command-prompt -I '#{session_name}' "rename-session '%%'"
bind    C-x confirm-before -p 'kill-session #{session_name}? (y/n)' kill-session

# windows management (no extra modifier key)
bind    w run "~/.tmux/scripts/choose_tree_left.sh windows"
bind    f command-prompt "find-window -N -F '#{window_name}' '%%'"
bind    a last-window
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
bind    c command-prompt -I '#{host_short}' "new-window -n '%%'"
bind    r command-prompt -I '#{window_name}' "rename-window '%%'"
bind    x confirm-before -p "kill-window #{window_name}? (y/n)" kill-window
bind    v run "~/.tmux/scripts/split_window_ssh.sh h"
bind    s run "~/.tmux/scripts/split_window_ssh.sh v"
bind -r [ swap-window -t -
bind -r ] swap-window -t +

# panes management (using uppercase except for direct navigation)
bind       Q display-panes
bind       L clear-history \; \
             display-message "Pane history cleared"
bind -r    N select-pane -t :.+
bind -r    P select-pane -t :.-
bind       Z resize-pane -Z
bind       X if '[ #{window_panes} -ne 1 ]' kill-pane 'confirm-before -p "kill-window #{window_name}? (y/n)" kill-window'
bind -r    { swap-pane -U
bind -r    } swap-pane -D
bind    BSpace respawn-pane
bind    M-BSpace respawn-pane -k

bind   ! select-layout even-horizontal
bind   @ select-layout main-vertical
bind '#' select-layout even-vertical
bind '$' select-layout main-horizontal
bind   % select-layout tiled

bind -T root M-h run "~/.tmux/scripts/select_pane_vim.sh h"
bind -T root M-j run "~/.tmux/scripts/select_pane_vim.sh j"
bind -T root M-k run "~/.tmux/scripts/select_pane_vim.sh k"
bind -T root M-l run "~/.tmux/scripts/select_pane_vim.sh l"
bind -T root M-a run "~/.tmux/scripts/select_pane_vim.sh a"

bind -T root M-H resize-pane -L 3
bind -T root M-J resize-pane -D 3
bind -T root M-K resize-pane -U 3
bind -T root M-L resize-pane -R 3

# copy/paste
bind ( copy-mode
bind ) paste-buffer

# copy mode management
unbind -T copy-mode-vi Space
unbind -T copy-mode-vi Enter
unbind -T copy-mode-vi A

bind -T copy-mode-vi C-c send -X cancel
bind -T copy-mode-vi   y send -X copy-selection-and-cancel
bind -T copy-mode-vi   v send -X begin-selection
bind -T copy-mode-vi C-v send -X rectangle-toggle
