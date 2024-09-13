#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

TRAINING_PATH="$( project-path repo trainings )/git/atomic-commits"

"${TRAINING_PATH}/tmux_env.sh" \
  "${SOCKET}" \
  "${SESSION_NAME}" \
  "${TRAINING_PATH}"
