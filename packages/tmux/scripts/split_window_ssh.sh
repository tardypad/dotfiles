#!/usr/bin/env bash

OPTION="$1"

PANE_CURRENT_COMMAND=$(
  tmux display -p '#{pane_current_command}'
)

if [ "${PANE_CURRENT_COMMAND}" != 'ssh' ]; then
  tmux split-window -"${OPTION}" -c '#{pane_current_path}'
  exit
fi

PANE_TTY=$(
  tmux display -p '#{pane_tty}'
)

SSH_COMMAND=$(
  ps -t "${PANE_TTY}" -o command= --sort=pid \
    | grep ssh --max-count=1
)

tmux split-window -"${OPTION}" "TERM=xterm-256color ${SSH_COMMAND}"
