set -g message-command-style "bg=#{{{base09/hex}}},fg=#{{{base00/hex}}},bold"
set -g message-style "bg=#{{{base09/hex}}},fg=#{{{base00/hex}}}"
set -g mode-style "bg=#{{{notice/hex}}},fg=#{{{base00/hex}}}"

set -g display-panes-colour "#{{{base09/hex}}}"
set -g display-panes-active-colour "#{{{base08/hex}}}"

set -g status-justify left

%if #{TMUX_ENV}
set -g status on
%else
set -g status off
%endif

set -g status-style "bg=default,fg=#{{{foreground/hex}}}"
set -g status-left-style "bg=#{{{base09/hex}}},fg=#{{{base00/hex}}}"
set -g status-right-style "fg=#{{{base09/hex}}}"

set -g status-left-length 40
set -g status-left "#[fg=#{{{notice/hex}}},bold]#{?#{==:#{client_key_table},prefix},Ⓟ,#{?#{==:#{client_key_table},extract-mode},Ⓔ, }}#[default]  #{session_name}   #[bg=#{{{background/hex}}},fg=#{{{foreground/hex}}}]   "
%if #{DISPLAY}
set -g status-right ''
%else
set -g status-right '  %a %e %b %Y %H:%M'
%endif

setw -g window-style "bg=#{{{base01/hex}}}"
setw -g window-active-style "bg=#{{{background/hex}}}"

setw -g pane-border-style "bg=#{{{base01/hex}}},fg=#{{{foreground/hex}}}"
setw -g pane-active-border-style "bg=#{{{background/hex}}},fg=#{{{base08/hex}}}"

setw -g pane-border-format ' #{pane_current_command} '
setw -g pane-border-status off

setw -g window-status-current-style "bg=#{{{base08/hex}}},fg=#{{{base00/hex}}}"
setw -g window-status-last-style "fg=#{{{base08/hex}}}"
setw -g window-status-activity-style 'underscore'
setw -g window-status-bell-style 'underscore'

setw -g window-status-separator ' '
setw -g window-status-format ' #{window_index}:#{window_name} '
setw -g window-status-current-format ' #{?window_zoomed_flag,~~ ,}#{window_index}:#{?pane_in_mode,[,}#{window_name}#{?pane_in_mode,],}#{?window_zoomed_flag, ~~,} '

setw -g main-pane-width 80
setw -g main-pane-height 40
setw -g other-pane-width 60
setw -g other-pane-height 15
