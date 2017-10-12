#!/usr/bin/env bash

menu_width=40

type="$1"

# abort if there is already a choice tree in the current window
tmux list-panes -F '#{pane_start_command}' \
  | grep -qE 'choose_window|choose_session'
if [[ $? -eq 0 ]]; then
  exit 0
fi


# use pane index instead of id
# otherwise the restoring of pane seems to fail in case of id starting with %1
# ¯\_(ツ)_/¯
current_pane_index=$( tmux display -p '#{pane_index}' )
current_window_layout=$( tmux display -p '#{window_visible_layout}' )

case "${type}" in
  windows)
    select_command="select-window -t '%%'"
    pane_title='choose_window'
    ;;
  sessions)
    select_command="switch-client -t '%%'"
    pane_title='choose_session'
    ;;
esac

# create new active menu pane
# with an unexisting command just to set the pane title
# full window height, on most left part, with fixed width
# (using the -l width option of split-window seems not to be working
# in case of multiple panes, so we use resize-pane after creation)
tmux \
  select-pane -t :.left \; \
  split-window -hbf "${pane_title}" \; \
  resize-pane -x "${menu_width}"

# before switching sessions/windows
# close menu, restore layout and active pane
choose_command=" \
  kill-pane ; \
  select-layout ${current_window_layout} ; \
  select-pane -t :.${current_pane_index} ; \
  ${select_command} \
"

case "${type}" in
  windows)
    tmux choose-tree -w \
      -W '#{window_name}' \
      -c "${choose_command}"
    ;;
  sessions)
    tmux choose-tree \
      -S '#(echo #{session_name} | sed "s/^[0-9]*-//")' \
      -W '#{window_name}' \
      -b "${choose_command}"
    ;;
esac

# as long as the menu pane is open
# check regularly if the choice tree is still available or if it was closed (with q or Escape)
# if closed (equals pane no more in mode), close the menu pane
# this is done in a new process so as not to block the user actions
# need to escape the #{...} variables in -F arguments, otherwise they get replaced immediately
tmux run -b \
  'while tmux -S #{socket_path} list-panes -F "#""{pane_start_command}" | grep -q choose_; do
     sleep 0.3
     tmux -S #{socket_path} list-panes -F "#""{pane_id},"#""{pane_in_mode},"#""{pane_start_command}" \
       | grep "0,choose_" \
       | cut -d "," -f 1 \
       | xargs -I {} tmux -S #{socket_path} kill-pane -t .{}
   done'
