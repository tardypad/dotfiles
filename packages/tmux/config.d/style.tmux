set -g message-command-style "bg=#{{{base0A/hex}}},fg=#{{{base00/hex}}}"
set -g message-style "bg=#{{{base0A/hex}}},fg=#{{{base00/hex}}}"
set -g mode-style "bg=#{{{base0A/hex}}},fg=#{{{base00/hex}}}"

set -g display-panes-colour "#{{{base0A/hex}}}"
set -g display-panes-active-colour "#{{{base08/hex}}}"

set -g status-justify left

%if #{TMUX_ENV}
set -g status on
%else
set -g status off
%endif

set -g status-style "bg=default,fg=#{{{base04/hex}}}"
set -g status-left-style "bg=#{{{base0D/hex}}},fg=#{{{base00/hex}}}"
set -g status-right-style "fg=#{{{base0D/hex}}}"

set -g status-left-length 40
set -g status-left "#[fg=#{{{base06/hex}}},bold]#{?#{==:#{client_key_table},prefix},Ⓟ,#{?#{==:#{client_key_table},extract-mode},Ⓔ, }}#[default]  #{session_name}   #[bg=#{{{base00/hex}}},fg=#{{{base04/hex}}}]   "
%if #{DISPLAY}
set -g status-right ''
%else
set -g status-right '  %a %e %b %Y %H:%M'
%endif

setw -g window-style "bg=#{{{base01/hex}}}"
setw -g window-active-style "bg=#{{{base00/hex}}}"

setw -g pane-border-style "bg=#{{{base01/hex}}},fg=#{{{base04/hex}}}"
setw -g pane-active-border-style "bg=#{{{base00/hex}}},fg=#{{{base0A/hex}}}"

setw -g pane-border-format ' #{pane_current_command} '
setw -g pane-border-status off

setw -g window-status-current-style "bg=#{{{base0A/hex}}},fg=#{{{base00/hex}}}"
setw -g window-status-last-style "fg=#{{{base0A/hex}}}"
setw -g window-status-activity-style 'underscore'
setw -g window-status-bell-style 'underscore'

setw -g window-status-separator ' '
setw -g window-status-format ' #{window_index}:#{window_name} '
setw -g window-status-current-format ' #{?window_zoomed_flag,~~ ,}#{window_index}:#{?pane_in_mode,[,}#{window_name}#{?pane_in_mode,],}#{?window_zoomed_flag, ~~,} '

setw -g main-pane-width 80
setw -g main-pane-height 40
setw -g other-pane-width 60
setw -g other-pane-height 15
