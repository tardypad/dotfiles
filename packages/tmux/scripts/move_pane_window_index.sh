#!/bin/sh
# commands used:
# - tmux

TARGET_INDEX="$1"

{
  if tmux list-windows -F '#{window_index}' | grep -q "^${TARGET_INDEX}$"; then
    tmux move-pane -h -t ":=${TARGET_INDEX}"
  else
    tmux break-pane
  fi
} 2> /dev/null

exit 0
