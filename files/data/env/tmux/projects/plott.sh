#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

PLOTT_PATH=$( project-path repo plott )
JP_PATH=$( project-path repo jp )

tmux -L "${SOCKET}" \
  new-session -d \
  -s "${SESSION_NAME}" \
  -n 'plott' \
  -c "${PLOTT_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${PLOTT_PATH}" \
  "vim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md"

tmux -L "${SOCKET}" \
  new-window \
  -n 'jp' \
  -c "${JP_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${JP_PATH}" \
  vim

tmux -L "${SOCKET}" \
  select-window \
  -t ':plott'
