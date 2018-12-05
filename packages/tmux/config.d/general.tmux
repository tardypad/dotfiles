# define prefix
set -g prefix C-Space

# don't let programs rename windows when inside a tmux env
%if #{TMUX_ENV}
setw -g allow-rename off
setw -g automatic-rename off
%else
setw -g allow-rename on
setw -g automatic-rename on
setw -g automatic-rename-format '#{pane_current_command}'
%endif

# use session name as terminal window title
set -g set-titles on
set -g set-titles-string '#{session_name} / #{window_name}'

# don't detach the client when killing a session
# only inside a tmux env
%if #{TMUX_ENV}
set -g detach-on-destroy off
%else
set -g detach-on-destroy on
%endif

# don't close windows/panes when initial command exits
# only inside a tmux env
%if #{TMUX_ENV}
setw -g remain-on-exit on
%else
setw -g remain-on-exit off
%endif

# define default term type
%if #{DISPLAY}
set -g default-terminal "tmux-256color"
%else
set -g default-terminal "screen-256color"
%endif

# define command for new windows
# prevents use of default behavior which creates a login shell
# and define default shell if tmux is used as login shell
%if #{DISPLAY}
set -g default-command "exec /bin/zsh"
set -g default-shell "/bin/zsh"
%else
set -g default-command "exec /bin/bash"
set -g default-shell "/bin/bash"
%endif

# add truecolor support
set -ga terminal-overrides ",xterm-256color:Tc"
set -ga terminal-overrides ",xterm-termite:Tc"

# update sway socket environment variable
# for when we reattach a session after a logout (new sway instance)
set -g update-environment SWAYSOCK

# define characters considered not part of a word
# remove "all" non alphanumeric characters
set -g word-separators "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ "

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

# use vlock to lock
set -g lock-command vlock

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
