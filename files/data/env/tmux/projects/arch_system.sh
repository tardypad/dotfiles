#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

ARCH_SYSTEM_PATH=$( project-path repo arch-system )

tmux -L "${SOCKET}" \
  new-session -d \
  -s "${SESSION_NAME}" \
  -n 'terminal' \
  -c "${ARCH_SYSTEM_PATH}"

tmux -L "${SOCKET}" \
  new-window \
  -n 'code' \
  -c "${ARCH_SYSTEM_PATH}" \
  "vim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md"

tmux -L "${SOCKET}" \
  select-window \
  -t ':terminal'
