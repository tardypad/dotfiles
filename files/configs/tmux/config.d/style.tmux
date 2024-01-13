set-option -g message-command-style "bg=#{color/base09/hex},fg=#{color/base00/hex},bold"
set-option -g message-style "bg=#{color/base09/hex},fg=#{color/base00/hex}"
set-option -g mode-style "bg=#{color/base03/hex},fg=#{color/base00/hex}"

set-option -g display-panes-colour "#{color/base09/hex}"
set-option -g display-panes-active-colour "#{color/base0A/hex}"

set-option -g popup-border-style "fg=#{color/base0A/hex}"

set-option -g status-justify left

set-option -g status on

set-option -g status-style "bg=default,fg=#{color/foreground/hex}"
set-option -g status-left-style "bg=#{color/base09/hex},fg=#{color/base00/hex}"
set-option -g status-right-style "fg=#{color/base09/hex}"

set-option -g status-left-length 40
set-option -g status-left " #{session_name} "
set-option -g status-right ''

set-option -g status-format[0] \
"#[align=left range=left #{status-left-style}]\
#{T;=/#{status-left-length}:status-left}\
#[norange default]  \
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
#[bg=#{color/background/hex},fg=#{color/notice/hex}]\
  #{?#{!=:#{client_key_table},root},-- #{?#{==:#{client_key_table},prefix},Prefix,#{client_key_table}} --,}  \
#[default]\
#[nolist align=right range=right #{status-right-style}]\
#{T;=/#{status-right-length}:status-right}\
#[norange default]"

set-option -w -g pane-border-style "bg=#{color/inactive_window_background/hex},fg=#{color/base03/hex}"
set-option -w -g pane-active-border-style "bg=#{color/background/hex},fg=#{color/base0A/hex}"

set-option -w -g pane-border-indicators off
set-option -w -g pane-border-format ' #{pane_current_command} '
set-option -w -g pane-border-status off

set-option -w -g window-active-style "bg=#{color/background/hex}"
set-option -w -g window-style "bg=#{color/inactive_window_background/hex}"

set-option -w -g window-status-current-style "bg=#{color/base09/hex},fg=#{color/base00/hex}"
set-option -w -g window-status-last-style "fg=#{color/base09/hex}"
set-option -w -g window-status-activity-style 'fg=#{color/notice/hex}'
set-option -w -g window-status-bell-style 'fg=#{color/notice/hex}'

set-option -w -g window-status-separator ' '
set-option -w -g window-status-format ' #{window_index}:#{window_name} '
set-option -w -g window-status-current-format \
'#{?#{||:#{pane_in_mode},#{pane_synchronized}},#[bg=#{color/notice/hex}#,fg=#{color/base00/hex}],}\
#{?window_zoomed_flag,~~,}\
#{?pane_in_mode,[,}\
#{E:window-status-format}\
#{?pane_synchronized,$ ,}\
#{?pane_in_mode,],}\
#{?window_zoomed_flag,~~,}'

set-option -w -g main-pane-width 70%
set-option -w -g main-pane-height 70%

set-option -w -g copy-mode-mark-style "bg=#{color/base01/hex}"

set-option -w -g copy-mode-match-style "bg=#{color/search_match/hex},fg=#{color/base00/hex}"
set-option -w -g copy-mode-current-match-style "bg=#{color/search_match_current/hex},fg=#{color/base00/hex}"
