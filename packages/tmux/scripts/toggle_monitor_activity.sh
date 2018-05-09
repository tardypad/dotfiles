#!/usr/bin/env bash

STATUS=

if tmux show-window-options | grep -q 'monitor-activity on'; then
  tmux set-window-option monitor-activity off
  STATUS='disabled'
else
  tmux set-window-option monitor-activity on
  STATUS='enabled'
fi

tmux display-message "Monitoring for window #{window_name}: activity ${STATUS}"
