#!/bin/sh

key="$1"

pane_current_command=$(
  tmux display -p '#{pane_current_command}'
)

if [ "${pane_current_command}" = 'vim' ]; then
  tmux send-keys "${key}"
  exit
fi

case "${key}" in
  h) option=L ;;
  j) option=D ;;
  k) option=U ;;
  l) option=R ;;
  a) option=l ;;
esac

tmux select-pane -"${option}"
exit 0
