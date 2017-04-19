# define prefix
set -g prefix C-a

# don't let programs rename window name
setw -g allow-rename off
setw -g automatic-rename off

# don't detach the client when killing a session
set -g detach-on-destroy off

# don't close windows/panes when initial command exits
setw -g remain-on-exit on

# define default term type
set -g default-terminal "screen-256color"

# start windows and panes numbering at 1
set -g base-index 1
setw -g pane-base-index 1

# automatically renumber windows when one gets closed
set -g renumber-windows on

# define time panes indicator are shown when using display-panes
set -g display-panes-time 1500

# define time messages and indicators are shown
set -g display-time 1500

# use vi keybindings
set -g status-keys vi
setw -g mode-keys vi

# increase the maximum number of lines in window history
set -g history-limit 10000

# use focus events
set -g focus-events on

# do not monitor activity and silence by default
setw -g monitor-activity off
setw -g monitor-silence 0

# do not display message on activity/bell/silence
# change in the window status style is enough
set -g visual-activity off
set -g visual-bell off
set -g visual-silence off
