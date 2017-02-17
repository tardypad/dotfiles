#!/bin/sh

menu_width=40

type="$1"

# use pane index instead of id
# otherwise the restoring of pane seems to fail in case of id starting with %1
# ¯\_(ツ)_/¯
current_pane_index=$( tmux display -p '#{pane_index}' )
current_window_layout=$( tmux display -p '#{window_visible_layout}' )

# create new active menu pane
# full window height, on most left part, with fixed width
tmux select-pane -t :.left
tmux split-window -hbf
tmux resize-pane -x "${menu_width}"

case "${type}" in
  windows) select_command="select-window -t '%%'" ;;
  sessions) select_command="switch-client -t '%%'" ;;
esac

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
