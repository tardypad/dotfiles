# remove all default bindings
unbind -T prefix -a
unbind -T prefix -t vi-choice -a
unbind -T prefix -t vi-copy -a
unbind -T prefix -t vi-edit -a
unbind -T root -a

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
bind M-t run "~/.tmux/scripts/temporary_panel.sh translate_shell 60"
bind M-h command-prompt -p 'help:' "run '~/.tmux/scripts/temporary_panel.sh \"colored_man %%\" 80'"
bind M-n command-prompt -p 'notes:' "run '~/.tmux/scripts/temporary_panel.sh \"notes open %%\" 80'"

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
bind    C-x confirm-before -p 'kill-session #(echo #{session_name} | sed "s/^[0-9]*-//")? (y/n)' kill-session

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
bind    | run "~/.tmux/scripts/split_window_ssh.sh h"
bind    \ run "~/.tmux/scripts/split_window_ssh.sh h"
bind    - run "~/.tmux/scripts/split_window_ssh.sh v"
bind    _ run "~/.tmux/scripts/split_window_ssh.sh v"
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
bind      F5 respawn-pane
bind    M-F5 respawn-pane -k

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
bind -t vi-copy    C-c cancel
bind -t vi-copy      q cancel
bind -t vi-copy    C-b page-up
bind -t vi-copy    C-f page-down
bind -t vi-copy    C-d halfpage-down
bind -t vi-copy    C-u halfpage-up
bind -t vi-copy    C-e scroll-down
bind -t vi-copy    C-y scroll-up
bind -t vi-copy      h cursor-left
bind -t vi-copy      j cursor-down
bind -t vi-copy      k cursor-up
bind -t vi-copy      l cursor-right
bind -t vi-copy      g history-top
bind -t vi-copy      G history-bottom
bind -t vi-copy      H top-line
bind -t vi-copy      M middle-line
bind -t vi-copy      L bottom-line
bind -t vi-copy      D copy-end-of-line
bind -t vi-copy      0 start-of-line
bind -t vi-copy      ^ back-to-indentation
bind -t vi-copy      $ end-of-line
bind -t vi-copy      b previous-word
bind -t vi-copy      B previous-space
bind -t vi-copy      e next-word-end
bind -t vi-copy      E next-space-end
bind -t vi-copy      w next-word
bind -t vi-copy      W next-space
bind -t vi-copy      f jump-forward
bind -t vi-copy      F jump-backward
bind -t vi-copy      t jump-to-forward
bind -t vi-copy      T jump-to-backward
bind -t vi-copy     \; jump-again
bind -t vi-copy      , jump-reverse
bind -t vi-copy      { previous-paragraph
bind -t vi-copy      } next-paragraph
bind -t vi-copy      o other-end
bind -t vi-copy      : goto-line
bind -t vi-copy      / search-forward
bind -t vi-copy      ? search-backward
bind -t vi-copy      n search-again
bind -t vi-copy      N search-reverse
bind -t vi-copy    '"' start-named-buffer
bind -t vi-copy      1 start-number-prefix
bind -t vi-copy      2 start-number-prefix
bind -t vi-copy      3 start-number-prefix
bind -t vi-copy      4 start-number-prefix
bind -t vi-copy      5 start-number-prefix
bind -t vi-copy      6 start-number-prefix
bind -t vi-copy      7 start-number-prefix
bind -t vi-copy      8 start-number-prefix
bind -t vi-copy      9 start-number-prefix
bind -t vi-copy      v begin-selection
bind -t vi-copy      V select-line
bind -t vi-copy      y copy-selection
bind -t vi-copy Escape clear-selection

# choice mode management
bind -t vi-choice      q cancel
bind -t vi-choice Escape cancel
bind -t vi-choice  Enter choose
bind -t vi-choice      o choose
bind -t vi-choice      g start-of-list
bind -t vi-choice      G end-of-list
bind -t vi-choice      j down
bind -t vi-choice      k up
bind -t vi-choice      h tree-collapse
bind -t vi-choice      l tree-expand
bind -t vi-choice      H tree-collapse-all
bind -t vi-choice      L tree-expand-all
bind -t vi-choice  Space tree-toggle

# edit mode management
bind -t vi-edit    C-c cancel
bind -t vi-edit  Enter enter
bind -t vi-edit   Left cursor-left
bind -t vi-edit  Right cursor-right
bind -t vi-edit    C-p history-up
bind -t vi-edit    C-n history-down
bind -t vi-edit Escape switch-mode
bind -t vi-edit    Tab complete
bind -t vi-edit    C-h backspace
bind -t vi-edit BSpace backspace
bind -t vi-edit    C-u delete-line
bind -t vi-edit    C-w delete-word

bind -ct vi-edit   C-c cancel
bind -ct vi-edit Enter enter
bind -ct vi-edit  Left cursor-left
bind -ct vi-edit     h cursor-left
bind -ct vi-edit Right cursor-right
bind -ct vi-edit     l cursor-right
bind -ct vi-edit   C-p history-up
bind -ct vi-edit     k history-up
bind -ct vi-edit   C-n history-down
bind -ct vi-edit     j history-down
bind -ct vi-edit     i switch-mode
bind -ct vi-edit     0 start-of-line
bind -ct vi-edit     ^ start-of-line
bind -ct vi-edit     $ end-of-line
bind -ct vi-edit     b previous-word
bind -ct vi-edit     B previous-space
bind -ct vi-edit     e next-word-end
bind -ct vi-edit     E next-space-end
bind -ct vi-edit     w next-word
bind -ct vi-edit     W next-space
bind -ct vi-edit     A switch-mode-append-line
bind -ct vi-edit     C switch-mode-change-line
bind -ct vi-edit     D delete-end-of-line
bind -ct vi-edit     I switch-mode-begin-line
bind -ct vi-edit     s switch-mode-substitute
bind -ct vi-edit     S switch-mode-substitute-line
bind -ct vi-edit     a switch-mode-append
bind -ct vi-edit     d delete-line
bind -ct vi-edit     x delete
bind -ct vi-edit     X backspace
bind -ct vi-edit     p paste
