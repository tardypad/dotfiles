# define prefix
set-option -g prefix C-Space

# don't let programs rename windows when inside a tmux env
%if #{TMUX_ENV}
set-option -w -g allow-rename off
set-option -w -g automatic-rename off
%else
set-option -w -g allow-rename on
set-option -w -g automatic-rename on
set-option -w -g automatic-rename-format '#{pane_current_command}'
%endif

# store OSC 52 content as buffer and to terminal clipboard
set-option -g set-clipboard on

# use session name as terminal window title
set-option -g set-titles on
set-option -g set-titles-string '#{session_name} / #{window_name}'

# don't detach the client when killing a session
# only inside a tmux env
%if #{TMUX_ENV}
set-option -g detach-on-destroy off
%else
set-option -g detach-on-destroy on
%endif

# close windows/panes when initial command exits
set-option -w -g remain-on-exit off

# define default term type
set-option -g default-terminal "tmux-256color"

# define command for new windows
# prevents use of default behavior which creates a login shell
# and define default shell if tmux is used as login shell
set-option -g default-command "exec /bin/zsh"
set-option -g default-shell "/bin/zsh"

# add truecolor and synchronized update support for foot
set-option -ga terminal-features ",foot:RGB:sync"

# update sway socket environment variable
# for when we reattach a session after a logout (new sway instance)
set-option -g update-environment SWAYSOCK

# define characters considered not part of a word
# remove "all" non alphanumeric characters, except _
set-option -g word-separators "!\"#$%&'()*+,-./:;<=>?@[\\]^`{|}~ "

# start windows and panes numbering at 1
set-option -g base-index 1
set-option -w -g pane-base-index 1

# automatically renumber windows when one gets closed
set-option -g renumber-windows on

# define time panes indicator are shown when using display-panes
set-option -g display-panes-time 1500

# define time messages and indicators are shown
set-option -g display-time 3000

# use vi keybindings
set-option -g status-keys vi
set-option -w -g mode-keys vi

# increase the maximum number of lines in window history
set-option -g history-limit 10000

# use focus events
set-option -g focus-events on

# use vlock to lock
set-option -g lock-command vlock

# decrease the input escape time
set-option -g escape-time 100

# decrease the binding keys repeat time
set-option -g repeat-time 300

# do not monitor activity/bell/silence by default
set-option -w -g monitor-activity off
set-option -w -g monitor-bell off
set-option -w -g monitor-silence 0

# disable default visual display of activity/bell/silence alerts
set-option -g visual-activity off
set-option -g visual-bell off
set-option -g visual-silence off

# run activity/bell/silence actions from any window
# preferably we'd use it only for other windows than current one
# but then no action would be triggered on active window from another session
set-option -g activity-action any
set-option -g bell-action any
set-option -g silence-action any

# custom handling of activity/bell/silence alerts
# to manage alerts across sessions (not supported by default)
# session id starts with '$' so it needs to be quoted not be interpreted as a variable
set-hook -g alert-activity "run \"tmux-notify-alert activity '#{socket_path}' '#{session_id}' #{window_id}\""
set-hook -g alert-bell "run \"tmux-notify-alert bell '#{socket_path}' '#{session_id}' #{window_id}\""
set-hook -g alert-silence "run \"tmux-notify-alert silence '#{socket_path}' '#{session_id}' #{window_id}\""

# when detaching the chat session we want to switch to the core.weechat buffer
# this way we keep receiving highlight notifications that otherwise would have been silenced
set-hook -g client-detached "run \"if [ '#{session_name}' = 'chat' ]; then echo '/buffer core.weechat' | weechat-fifo; fi\""

# aliases
set-option -g command-alias[1] sync='set synchronize-panes on'
set-option -g command-alias[2] nosync='set synchronize-panes off'
set-option -g command-alias[3] copy-full-pane='run "tmux capture-pane -p -S- -E- | wl-copy"'
