#!/usr/bin/env bash

type="$1"

# abort if there is already a choice tree in the current window
tmux list-panes -F '#{pane_start_command}' \
  | grep -qE 'choose_window|choose_session|choose_buffer'
if [[ $? -eq 0 ]]; then
  exit 0
fi


# use pane index instead of id
# otherwise the restoring of pane seems to fail in case of id starting with %1
# ¯\_(ツ)_/¯
current_pane_index=$( tmux display -p '#{pane_index}' )
current_window_layout=$( tmux display -p '#{window_visible_layout}' )
current_session_name=$( tmux display -p '#{session_name}' )

case "${type}" in
  windows)
    menu_width=40
    select_command="select-window -t '%%'"
    pane_title='choose_window'
    ;;
  sessions)
    menu_width=40
    select_command="switch-client -t '%%'"
    pane_title='choose_session'
    ;;
  buffers)
    menu_width=50
    select_command="paste-buffer -b '%%'"
    pane_title='choose_buffer'
    ;;
esac

# create new active menu pane
# with an unexisting command just to set the pane title and make the pane dead
# full window height, on most left part, with fixed width
# (using the -l width option of split-window seems not to be working
# in case of multiple panes, so we use resize-pane after creation)
tmux \
  select-pane -t :.left \; \
  split-window -hbf "${pane_title}" \; \
  resize-pane -x "${menu_width}"

# before executing the command
# close menu, restore layout and active pane
choose_command=" \
  kill-pane ; \
  select-layout ${current_window_layout} ; \
  select-pane -t :.${current_pane_index} ; \
  ${select_command} \
"

format='#{?pane_format,'
  format+='#{pane_current_command}'
format+=','
  format+='#{?window_format,'
    format+='#{window_name}'
  format+=','
  format+='}'
format+='}'

case "${type}" in
  windows)
    tmux choose-tree -N -w \
      -F "${format}" \
      -f "#{==:#{session_name},${current_session_name}}"
      -O name \
      "${choose_command}"
    ;;
  sessions)
    tmux choose-tree -N -s -w \
      -F "${format}" \
      -O name \
      "${choose_command}"
    ;;
  buffers)
    tmux choose-buffer -N \
      -F "#{buffer_sample}" \
      -O time \
      "${choose_command}"
    ;;
esac

# as long as the menu pane is open
# check regularly if the choice tree is still available or if it was closed (with q or Escape)
# if closed (equals pane no more in mode), close the menu pane
# this is done in a new process so as not to block the user actions
# need to escape the #{...} variables in -F arguments, otherwise they get replaced immediately
script='while tmux -S #{socket_path} list-panes -F "#""{pane_start_command}" | grep -q choose_; do
     sleep 0.3
     tmux -S #{socket_path} list-panes -F "#""{pane_id},"#""{pane_in_mode},"#""{pane_start_command}" \
       | grep "0,choose_" \
       | cut -d "," -f 1 \
       | xargs -I {} tmux -S #{socket_path} kill-pane -t .{}'
script+="\; select-layout \"${current_window_layout}\""
script+="\; select-pane -t :.${current_pane_index}"
script+='; done'
tmux run -b "${script}"
