#!/bin/sh
# commands used:
# - swaymsg
# - tmux

SOCKET_PATH="$1"
SESSION_ID="$2"
WINDOW_ID="$3"

STATUS=

if tmux show-window-options | grep -q 'monitor-activity on'; then
  tmux set-window-option monitor-activity off
  STATUS='disabled'
else
  tmux set-window-option monitor-activity on
  STATUS='enabled'

  if [ -n "${DISPLAY}" ]; then
    WINDOW_MARK=_tmux_alert
    WINDOW_MARK="${WINDOW_MARK}_${SOCKET_PATH##*/}"
    WINDOW_MARK="${WINDOW_MARK}_${SESSION_ID#$}"
    WINDOW_MARK="${WINDOW_MARK}_${WINDOW_ID#@}"
    swaymsg -q "mark --add ${WINDOW_MARK}"
  fi
fi

tmux display-message "Monitoring for window \"#{window_name}\": activity ${STATUS}"
