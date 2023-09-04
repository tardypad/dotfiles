#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

DOTFILES_PATH=$( project-path repo dotfiles )

tmux -L "${SOCKET}" \
  new-session -d \
  -s "${SESSION_NAME}" \
  -n 'terminal' \
  -c "${DOTFILES_PATH}"

tmux -L "${SOCKET}" \
  new-window \
  -n 'code' \
  -c "${DOTFILES_PATH}" \
  "nvim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md"

tmux -L "${SOCKET}" \
  select-window \
  -t ':terminal'
