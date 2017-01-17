#!/bin/sh

pane_tty="$1"
shift

ssh_command=$(
  ps -t "${pane_tty}" -o command= --sort=pid \
    | grep ssh --max-count=1
)

if [ -n "${ssh_command}" ]; then
  tmux split-window "$@" "${ssh_command}"
else
  tmux split-window "$@"
fi
