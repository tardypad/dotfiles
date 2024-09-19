#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

NOTES_DIR="${XDG_NOTES_DIR:-$HOME/Notes}"

NOTES_FILES="${NOTES_DIR}/todo.md"
if grep -qvE '# Waiting|^$' "${NOTES_DIR}/waiting.md"; then
  NOTES_FILES="${NOTES_FILES} ${NOTES_DIR}/waiting.md"
fi

tmux -L "${SOCKET}" \
  new-session -d \
  -s "${SESSION_NAME}" \
  -n 'main' \
  "nvim -c \"cd ${NOTES_DIR}\" -c \"let g:goyo_width='95%'\" -c \"let g:goyo_height='95%'\" -c Goyo ${NOTES_FILES}"

tmux -L "${SOCKET}" \
  split-window -h \; \
  select-layout main-vertical \; \
  send-keys clear Enter schedule Space today Enter

tmux -L "${SOCKET}" \
  set-option -w -g remain-on-exit on \; \
  set-option -g status off \; \
  select-pane -t ':.{left-of}'
