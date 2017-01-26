#!/bin/sh

pane_tty="$1"
key="$2"

if ps -t "${pane_tty}" -o command= | grep -iq '^vim'; then
  tmux send-keys "${key}"
else
  case "${key}" in
    h) option=L ;;
    j) option=D ;;
    k) option=U ;;
    l) option=R ;;
    a) option=l ;;
  esac

  tmux select-pane -"${option}"
fi
