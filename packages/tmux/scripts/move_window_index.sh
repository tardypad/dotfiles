#!/usr/bin/env bash

TARGET_INDEX="$1"

CURRENT_INDEX=$(
  tmux display -p '#{window_index}'
)

{
  if [ "${TARGET_INDEX}" -gt "${CURRENT_INDEX}" ]; then
    for (( i=CURRENT_INDEX; i<TARGET_INDEX; i++ )); do
      tmux swap-window -s :=$i -t :=$((i+1))
    done
  else
    for (( i=CURRENT_INDEX; i>TARGET_INDEX; i-- )); do
      tmux swap-window -s :=$i -t :=$((i-1))
    done
  fi
} 2> /dev/null

exit 0
