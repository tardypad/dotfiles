#!/bin/sh
# commands used:
# - tmux

TARGET_INDEX="$1"

CURRENT_INDEX=$(
  tmux display -p '#{window_index}'
)

{
  INDEX="${CURRENT_INDEX}"

  if [ "${TARGET_INDEX}" -gt "${CURRENT_INDEX}" ]; then
    while [ "${INDEX}" -lt "${TARGET_INDEX}" ]; do
      tmux swap-window -s :="${INDEX}" -t :=$((INDEX+1))
      INDEX=$(( INDEX + 1 ))
    done
  else
    while [ "${INDEX}" -gt "${TARGET_INDEX}" ]; do
      tmux swap-window -s :="${INDEX}" -t :=$((INDEX-1))
      INDEX=$(( INDEX - 1 ))
    done
  fi
} 2> /dev/null

exit 0
