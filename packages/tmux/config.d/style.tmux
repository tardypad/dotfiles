set -g message-command-style "bg=colour3,fg=colour8"
set -g message-style "bg=colour3,fg=colour8"
set -g mode-style "bg=colour3,fg=colour8"

set -g display-panes-colour "colour3"
set -g display-panes-active-colour "colour1"

set -g status-justify left

%if #{TMUX_ENV}
set -g status on
%else
set -g status off
%endif

set -g status-style "bg=default,fg=colour12"
set -g status-left-style "bg=colour4,fg=colour8"
set -g status-right-style "fg=colour4"

set -g status-left-length 40
set -g status-left "#[fg=colour7,bold]#{?#{==:#{client_key_table},prefix},Ⓟ,#{?#{==:#{client_key_table},extract-mode},Ⓔ, }}#[default]  #{session_name}   #[bg=colour8,fg=colour12]   "
%if #{DISPLAY}
set -g status-right ''
%else
set -g status-right '  %a %e %b %Y %H:%M'
%endif

setw -g window-style "bg=colour0"
setw -g window-active-style "bg=colour8"

setw -g pane-border-style "bg=colour0,fg=colour12"
setw -g pane-active-border-style "bg=colour8,fg=colour3"

setw -g pane-border-format ' #{pane_current_command} '
setw -g pane-border-status off

setw -g window-status-current-style "bg=colour3,fg=colour8"
setw -g window-status-last-style "fg=colour3"
setw -g window-status-activity-style 'underscore'
setw -g window-status-bell-style 'underscore'

setw -g window-status-separator ' '
setw -g window-status-format ' #{window_index}:#{window_name} '
setw -g window-status-current-format ' #{?window_zoomed_flag,~~ ,}#{window_index}:#{?pane_in_mode,[,}#{window_name}#{?pane_in_mode,],}#{?window_zoomed_flag, ~~,} '

setw -g main-pane-width 80
setw -g main-pane-height 40
setw -g other-pane-width 60
setw -g other-pane-height 15
