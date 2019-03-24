#!/usr/bin/env bash

SOCKET_PATH="$1"
SESSION_ID="$2"
WINDOW_ID="$3"

THRESHOLD=10
STATUS=

if tmux show-window-options | grep -q "monitor-silence ${THRESHOLD}"; then
  tmux set-window-option monitor-silence 0
  STATUS='disabled'
else
  tmux set-window-option monitor-silence "${THRESHOLD}"
  STATUS='enabled'

  if [[ -n ${DISPLAY} ]]; then
    WINDOW_MARK=tmux_alert
    WINDOW_MARK+="_${SOCKET_PATH##*/}"
    WINDOW_MARK+="_${SESSION_ID#$}"
    WINDOW_MARK+="_${WINDOW_ID#@}"
    swaymsg --quiet "mark --add ${WINDOW_MARK}"
  fi
fi

tmux display-message "Monitoring for window \"#{window_name}\": silence ${STATUS}"
