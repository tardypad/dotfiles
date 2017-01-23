# define prefix
set -g prefix C-a

# don't let programs rename window name
setw -g allow-rename off
setw -g automatic-rename off

# don't detach the client when killing a session
set -g detach-on-destroy off

# define default term type
set -g default-terminal "screen-256color"

# start windows and panes numbering at 1
set -g base-index 1
setw -g pane-base-index 1

# define time panes indicator are shown when using display-panes
set -g display-panes-time 1500

# use vi keybindings
set -g status-keys vi
setw -g mode-keys vi

# increase the maximum number of lines in window history
set -g history-limit 10000

# use focus events
set -g focus-events on
