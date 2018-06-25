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
set -g display-time 3000

# use vi keybindings
set -g status-keys vi
setw -g mode-keys vi

# increase the maximum number of lines in window history
set -g history-limit 10000

# use focus events
set -g focus-events on

# decrease the input escape time
set -g escape-time 100

# do not monitor activity/bell/silence by default
setw -g monitor-activity off
setw -g monitor-bell off
setw -g monitor-silence 0

# disable default visual display of activity/bell/silence alerts
set -g visual-activity off
set -g visual-bell off
set -g visual-silence off

# run activity/bell/silence actions from any window
# preferably we'd use it only for other windows than current one
# but then no action would be triggered on active window from another session
set -g activity-action any
set -g bell-action any
set -g silence-action any

# custom handling of activity/bell/silence alerts
# to manage alerts across sessions (not supported by default)
# session id starts with '$' so it needs to be quoted not be interpreted as a variable
set-hook -g alert-activity "run \"~/.tmux/scripts/notify_alert.sh activity '#{session_id}' #{window_id}\""
set-hook -g alert-bell "run \"~/.tmux/scripts/notify_alert.sh bell '#{session_id}' #{window_id}\""
set-hook -g alert-silence "run \"~/.tmux/scripts/notify_alert.sh silence '#{session_id}' #{window_id}\""
