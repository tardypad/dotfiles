set -g message-command-style "bg=#{color/base09/hex},fg=#{color/base00/hex},bold"
set -g message-style "bg=#{color/base09/hex},fg=#{color/base00/hex}"
set -g mode-style "bg=#{color/notice/hex},fg=#{color/base00/hex}"

set -g display-panes-colour "#{color/base09/hex}"
set -g display-panes-active-colour "#{color/base0A/hex}"

set -g status-justify left

set -g status on

set -g status-style "bg=default,fg=#{color/foreground/hex}"
set -g status-left-style "bg=#{color/base09/hex},fg=#{color/base00/hex}"
set -g status-right-style "fg=#{color/base09/hex}"

set -g status-left-length 40
set -g status-left "   #{session_name}   #[bg=#{color/background/hex},fg=#{color/notice/hex}]  #{?#{==:#{client_key_table},root},             ,#{?#{==:#{client_key_table},prefix},-- Prefix -- ,#{client_key_table}}}  "
%if #{DISPLAY}
set -g status-right ''
%else
set -g status-right '  %a %e %b %Y %H:%M'
%endif

set -g status-format[0] \
"#[align=left range=left #{status-left-style}]\
#{T;=/#{status-left-length}:status-left}\
#[norange default]\
#[list=on align=#{status-justify}]\
#[list=left-marker]<\
#[list=right-marker]>\
#[list=on]\
#{W:\
#[range=window|#{window_index} #{window-status-style}\
#{?#{&&:#{window_last_flag},#{!=:#{window-status-last-style},default}}, #{window-status-last-style},}\
#{?#{&&:#{window_bell_flag},#{!=:#{window-status-bell-style},default}}, #{window-status-bell-style},\
#{?#{&&:#{||:#{window_activity_flag},#{window_silence_flag}},\
#{!=:#{window-status-activity-style},default}}, #{window-status-activity-style},}}]\
#{T:window-status-format}\
#[norange default]\
#{?window_end_flag,,#{window-status-separator}},\
#[range=window|#{window_index} list=focus \
#{?#{!=:#{window-status-current-style},default},#{window-status-current-style},#{window-status-style}}\
#{?#{&&:#{window_last_flag},#{!=:#{window-status-last-style},default}}, #{window-status-last-style},}\
#{?#{&&:#{window_bell_flag},#{!=:#{window-status-bell-style},default}}, #{window-status-bell-style},\
#{?#{&&:#{||:#{window_activity_flag},#{window_silence_flag}},\
#{!=:#{window-status-activity-style},default}}, #{window-status-activity-style},}}]\
#{T:window-status-current-format}\
#[norange list=on default]\
#{?window_end_flag,,#{window-status-separator}}\
}\
#[nolist align=right range=right #{status-right-style}]\
#{T;=/#{status-right-length}:status-right}\
#[norange default]"

setw -g window-style "bg=#{color/base01/hex}"
setw -g window-active-style "bg=#{color/background/hex}"

setw -g pane-border-style "bg=#{color/base01/hex},fg=#{color/foreground/hex}"
setw -g pane-active-border-style "bg=#{color/background/hex},fg=#{color/base0A/hex}"

setw -g pane-border-format ' #{pane_current_command} '
setw -g pane-border-status off

setw -g window-status-current-style "bg=#{color/base0A/hex},fg=#{color/base00/hex}"
setw -g window-status-last-style "fg=#{color/base0A/hex}"
setw -g window-status-activity-style 'fg=#{color/notice/hex}'
setw -g window-status-bell-style 'fg=#{color/notice/hex}'

setw -g window-status-separator ' '
setw -g window-status-format ' #{window_index}:#{window_name} '
setw -g window-status-current-format \
'#{?pane_in_mode,#[bg=#{color/notice/hex}#,fg=#{color/base00/hex}],}\
#{?window_zoomed_flag,~~,}\
#{?pane_in_mode,[,}\
#{E:window-status-format}\
#{?pane_in_mode,],}\
#{?window_zoomed_flag,~~,}'

setw -g main-pane-width 80
setw -g main-pane-height 40
setw -g other-pane-width 60
setw -g other-pane-height 15
