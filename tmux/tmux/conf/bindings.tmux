# remove all default bindings
unbind -T prefix -a
unbind -T root -a
unbind -T copy-mode -a
unbind -T copy-mode-vi -a

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
bind M-b run "~/.tmux/scripts/choose_tree_left.sh buffers"

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
bind -T copy-mode-vi    C-c send-keys -X cancel
bind -T copy-mode-vi      q send-keys -X cancel
bind -T copy-mode-vi    C-b send-keys -X page-up
bind -T copy-mode-vi    C-f send-keys -X page-down
bind -T copy-mode-vi    C-u send-keys -X halfpage-up
bind -T copy-mode-vi    C-d send-keys -X halfpage-down
bind -T copy-mode-vi    C-e send-keys -X scroll-down
bind -T copy-mode-vi    C-y send-keys -X scroll-up
bind -T copy-mode-vi      h send-keys -X cursor-left
bind -T copy-mode-vi      j send-keys -X cursor-down
bind -T copy-mode-vi      k send-keys -X cursor-up
bind -T copy-mode-vi      l send-keys -X cursor-right
bind -T copy-mode-vi      g send-keys -X history-top
bind -T copy-mode-vi      G send-keys -X history-bottom
bind -T copy-mode-vi      H send-keys -X top-line
bind -T copy-mode-vi      M send-keys -X middle-line
bind -T copy-mode-vi      L send-keys -X bottom-line
bind -T copy-mode-vi      D send-keys -X copy-end-of-line
bind -T copy-mode-vi      0 send-keys -X start-of-line
bind -T copy-mode-vi      ^ send-keys -X back-to-indentation
bind -T copy-mode-vi    '$' send-keys -X end-of-line
bind -T copy-mode-vi      b send-keys -X previous-word
bind -T copy-mode-vi      B send-keys -X previous-space
bind -T copy-mode-vi      e send-keys -X next-word-end
bind -T copy-mode-vi      E send-keys -X next-space-end
bind -T copy-mode-vi      w send-keys -X next-word
bind -T copy-mode-vi      W send-keys -X next-space
bind -T copy-mode-vi      f command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\""
bind -T copy-mode-vi      F command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\""
bind -T copy-mode-vi      t command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\""
bind -T copy-mode-vi      T command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\""
bind -T copy-mode-vi     \; send-keys -X jump-again
bind -T copy-mode-vi      , send-keys -X jump-reverse
bind -T copy-mode-vi      { send-keys -X previous-paragraph
bind -T copy-mode-vi      } send-keys -X next-paragraph
bind -T copy-mode-vi      o send-keys -X other-end
bind -T copy-mode-vi      : command-prompt -p "(goto line)" "send -X goto-line \"%%%\""
bind -T copy-mode-vi      / command-prompt -p "(search down)" "send -X search-forward \"%%%\""
bind -T copy-mode-vi      ? command-prompt -p "(search up)" "send -X search-backward \"%%%\""
bind -T copy-mode-vi      n send-keys -X search-again
bind -T copy-mode-vi      N send-keys -X search-reverse
bind -T copy-mode-vi      1 command-prompt -N -I 1 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi      2 command-prompt -N -I 2 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi      3 command-prompt -N -I 3 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi      4 command-prompt -N -I 4 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi      5 command-prompt -N -I 5 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi      6 command-prompt -N -I 6 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi      7 command-prompt -N -I 7 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi      8 command-prompt -N -I 8 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi      9 command-prompt -N -I 9 -p (repeat) "send -N \"%%%\""
bind -T copy-mode-vi      v send-keys -X begin-selection
bind -T copy-mode-vi      V send-keys -X select-line
bind -T copy-mode-vi    C-v send-keys -X rectangle-toggle
bind -T copy-mode-vi      y send -X copy-selection-and-cancel
bind -T copy-mode-vi Escape send-keys -X clear-selection
