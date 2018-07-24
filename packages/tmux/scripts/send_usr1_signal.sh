#!/usr/bin/env bash

# send USR1 signal to pane if currently running zsh shell only

PANE_CURRENT_COMMAND=$(
 tmux display -p -F '#{pane_current_command}'
)

[[ "${PANE_CURRENT_COMMAND}" == 'zsh' ]] || exit 0

PANE_PID=$(
 tmux display -p -F '#{pane_pid}'
)

kill -USR1 "${PANE_PID}"
