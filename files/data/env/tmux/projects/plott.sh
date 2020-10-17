#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

PLOTT_PATH=$( project-path repo plott )
FZF_PATH=$( project-path repo fzf )
JP_PATH=$( project-path repo jp )
TTYPLOT_PATH=$( project-path repo ttyplot )

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
  -n 'fzf' \
  -c "${FZF_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${FZF_PATH}" \
  vim

tmux -L "${SOCKET}" \
  new-window \
  -n 'jp' \
  -c "${JP_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${JP_PATH}" \
  vim

tmux -L "${SOCKET}" \
  new-window \
  -n 'ttyplot' \
  -c "${TTYPLOT_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${TTYPLOT_PATH}" \
  vim

tmux -L "${SOCKET}" \
  select-window \
  -t ':plott'