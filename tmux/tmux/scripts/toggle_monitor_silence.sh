#!/bin/sh

THRESHOLD=10
STATUS=

if tmux show-window-options | grep -q "monitor-silence ${THRESHOLD}"; then
  tmux set-window-option monitor-silence 0
  STATUS='disabled'
else
  tmux set-window-option monitor-silence "${THRESHOLD}"
  STATUS='enabled'
fi

tmux display-message "Monitoring for window #{window_name}: silence ${STATUS}"
