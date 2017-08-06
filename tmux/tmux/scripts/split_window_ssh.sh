#!/usr/bin/env zsh

option="$1"

pane_current_command=$(
  tmux display -p '#{pane_current_command}'
)

if [ "${pane_current_command}" != 'ssh' ]; then
  tmux split-window -"${option}"
  exit
fi

pane_tty=$(
  tmux display -p '#{pane_tty}'
)

ssh_command=$(
  ps -t "${pane_tty}" -o command= --sort=pid \
    | grep ssh --max-count=1
)

tmux split-window -"${option}" "${ssh_command}"
