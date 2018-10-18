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

set -g status-justify left

%if #{TMUX_ENV}
set -g status on
%else
set -g status off
%endif

set -g status-style "bg=default,fg=$TMUX_FOREGROUND"
set -g status-left-style "bg=$TMUX_BLUE,fg=$TMUX_BLACK"
set -g status-right-style "fg=$TMUX_BLUE"

set -g status-left-length 40
set -g status-left "#[fg=$TMUX_WHITE,bold]#{?#{==:#{client_key_table},prefix},Ⓟ,#{?#{==:#{client_key_table},extract-mode},Ⓔ, }}#[default]  #{session_name}   #[bg=$TMUX_BLACK,fg=$TMUX_FOREGROUND]   "
%if #{DISPLAY}
set -g status-right ''
%else
set -g status-right '  %a %e %b %Y %H:%M'
%endif

setw -g window-style "bg=default,fg=$TMUX_FOREGROUND_DIM"
setw -g window-active-style "bg=default,fg=$TMUX_FOREGROUND"

setw -g pane-border-style "bg=default,fg=$TMUX_FOREGROUND"
setw -g pane-active-border-style "bg=default,fg=$TMUX_YELLOW"

setw -g pane-border-format ' #{pane_current_command} '
%if #{TMUX_ENV}
setw -g pane-border-status bottom
%else
setw -g pane-border-status off
%endif

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
