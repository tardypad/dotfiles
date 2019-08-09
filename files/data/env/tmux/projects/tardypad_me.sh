#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

TARDYPAD_ME_PATH=$( project-path repo tardypad.me )

tmux -L "${SOCKET}" \
  new-session -d \
  -s "${SESSION_NAME}" \
  -n 'terminal' \
  -c "${TARDYPAD_ME_PATH}"

tmux -L "${SOCKET}" \
  new-window \
  -n 'code' \
  -c "${TARDYPAD_ME_PATH}" \
  "vim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md"

tmux -L "${SOCKET}" \
  select-window \
  -t ':terminal'
