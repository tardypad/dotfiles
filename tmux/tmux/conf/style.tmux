TMUX_RED='colour1'
TMUX_YELLOW='colour3'
TMUX_BLUE='colour4'
TMUX_WHITE='colour7'
TMUX_BLACK='colour8'
TMUX_FOREGROUND_DIM='colour11'
TMUX_FOREGROUND='colour12'

set -g message-command-style "bg=$TMUX_YELLOW,fg=$TMUX_BLACK"
set -g message-style "bg=$TMUX_YELLOW,fg=$TMUX_BLACK"
set -g mode-style "bg=$TMUX_YELLOW,fg=$TMUX_BLACK"

set -g display-panes-colour "$TMUX_YELLOW"
set -g display-panes-active-colour "$TMUX_RED"

set -g status-justify centre

set -g status-style "bg=default,fg=$TMUX_FOREGROUND"
set -g status-left-style "bg=$TMUX_BLUE,fg=$TMUX_BLACK"
set -g status-right-style "fg=$TMUX_BLUE"

set -g status-left-length 40
set -g status-left "#[fg=$TMUX_WHITE]#{?client_prefix,█, }#[default]  #{session_name}   "
%if #{==:,#(echo $DISPLAY)}
set -g status-right '  %a %e %b %Y %H:%M'
%else
set -g status-right ''
%endif

setw -g window-style "bg=default,fg=$TMUX_FOREGROUND_DIM"
setw -g window-active-style "bg=default,fg=$TMUX_FOREGROUND"

setw -g pane-border-style "bg=default,fg=$TMUX_FOREGROUND"
setw -g pane-active-border-style "bg=default,fg=$TMUX_YELLOW"

setw -g pane-border-format ' #{pane_current_command} '
setw -g pane-border-status bottom

setw -g window-status-current-style "bg=$TMUX_YELLOW,fg=$TMUX_BLACK"
setw -g window-status-last-style "fg=$TMUX_YELLOW"
setw -g window-status-activity-style 'underscore'
setw -g window-status-bell-style 'underscore'

setw -g window-status-separator ' '
setw -g window-status-format ' #{window_index}:#{window_name} '
setw -g window-status-current-format ' #{?window_zoomed_flag,~~ ,}#{window_index}:#{?pane_in_mode,[,}#{window_name}#{?pane_in_mode,],}#{?window_zoomed_flag, ~~,} '

setw -g main-pane-width 80
setw -g main-pane-height 40
setw -g other-pane-width 60
setw -g other-pane-height 15
