set -g message-command-style 'bg=colour3,fg=colour0'
set -g message-style 'bg=colour3,fg=colour0'
set -g mode-style 'bg=colour3,fg=colour0'

set -g display-panes-colour colour3
set -g display-panes-active-colour colour1

set -g status-justify centre

set -g status-style 'bg=colour8,fg=colour12'
set -g status-left-style 'bg=colour4,fg=colour8'
set -g status-right-style 'fg=colour4'

set -g status-left-length 30
set -g status-left '#{?client_prefix,█, }  #(echo #{session_name} | sed "s/^[0-9]*-//")   #[bg=colour8]  '
set -g status-right '%a %e %b %Y %H:%M'

setw -g window-style 'bg=colour0'
setw -g window-active-style 'bg=colour8'

setw -g pane-border-style 'bg=colour0,fg=colour12'
setw -g pane-active-border-style 'bg=colour8,fg=colour3'

setw -g window-status-current-style 'bg=colour3,fg=colour8'
setw -g window-status-last-style 'fg=colour3'
setw -g window-status-activity-style 'underscore'
setw -g window-status-bell-style 'underscore'

setw -g window-status-separator ' '
setw -g window-status-format ' #{window_index}:#{window_name} '
setw -g window-status-current-format ' #{window_index}:#{?pane_in_mode,[,}#{window_name}#{?pane_in_mode,],}#{?window_zoomed_flag, Z,} '
