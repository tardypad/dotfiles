# define prefix
set -g prefix C-Space

# don't let programs rename window name
setw -g allow-rename off
setw -g automatic-rename off

# don't detach the client when killing a session
set -g detach-on-destroy off

# don't close windows/panes when initial command exits
setw -g remain-on-exit on

# define default term type
%if #{DISPLAY}
set -g default-terminal "tmux-256color"
%else
set -g default-terminal "screen-256color"
%endif

# define command for new windows
# prevents use of default behavior which creates a login shell
%if #{DISPLAY}
set -g default-command "exec /bin/zsh"
%else
set -g default-command "exec /bin/bash"
%endif

# add truecolor support
set -g terminal-overrides ",xterm-256color:Tc"

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

# do not monitor activity/bell/silence by default
setw -g monitor-activity off
setw -g monitor-bell off
setw -g monitor-silence 0

# only display message (no bell) on activity/bell/silence
set -g visual-activity on
set -g visual-bell on
set -g visual-silence on

# only run activity/bell/silent action for other window than current one
set -g activity-action other
set -g bell-action other
set -g silence-action other

# decrease the input escape time
set -g escape-time 100
