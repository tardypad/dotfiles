#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

WEND_PATH=$( project-path repo wend )
IMV_PATH=$( project-path repo imv )
MAKO_PATH=$( project-path repo mako )
WSHOWKEYS_PATH=$( project-path repo wshowkeys )
SCDOC_PATH=$( project-path repo scdoc )

tmux -L "${SOCKET}" \
  new-session -d \
  -s "${SESSION_NAME}" \
  -n 'wend' \
  -c "${WEND_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${WEND_PATH}" \
  "nvim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md"

tmux -L "${SOCKET}" \
  new-window \
  -n 'imv' \
  -c "${IMV_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${IMV_PATH}" \
  nvim

tmux -L "${SOCKET}" \
  new-window \
  -n 'mako' \
  -c "${MAKO_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${MAKO_PATH}" \
  nvim

tmux -L "${SOCKET}" \
  new-window \
  -n 'wshowkeys' \
  -c "${WSHOWKEYS_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${WSHOWKEYS_PATH}" \
  nvim

tmux -L "${SOCKET}" \
  new-window \
  -n 'scdoc' \
  -c "${SCDOC_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${SCDOC_PATH}" \
  nvim

tmux -L "${SOCKET}" \
  select-window \
  -t ':wend'
