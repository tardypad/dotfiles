#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

ALPINE_SYSTEM_PATH=$( project-path repo alpine-system )

tmux -L "${SOCKET}" \
  new-session -d \
  -s "${SESSION_NAME}" \
  -n 'terminal' \
  -c "${ALPINE_SYSTEM_PATH}"

tmux -L "${SOCKET}" \
  new-window \
  -n 'code' \
  -c "${ALPINE_SYSTEM_PATH}" \
  "vim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md"

tmux -L "${SOCKET}" \
  select-window \
  -t ':terminal'
