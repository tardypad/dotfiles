#!/usr/bin/env bash

KEY="$1"

PANE_CURRENT_COMMAND=$(
  tmux display -p '#{pane_current_command}'
)

if [ "${PANE_CURRENT_COMMAND}" = 'vim' ]; then
  tmux send-keys "${KEY}"
  exit
fi

case "${KEY}" in
  h) OPTION=L ;;
  j) OPTION=D ;;
  k) OPTION=U ;;
  l) OPTION=R ;;
  a) OPTION=l ;;
esac

tmux select-pane -"${OPTION}"
exit 0
