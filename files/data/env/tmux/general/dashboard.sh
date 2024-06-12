#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

tmux -L "${SOCKET}" \
  new-session -d \
  -s "${SESSION_NAME}" \
  -n 'main' \
  "nvim -c \"let g:goyo_width='95%'\" -c \"let g:goyo_height='95%'\" -c Goyo ${XDG_NOTES_DIR:-$HOME/Notes}/waiting.md ${XDG_NOTES_DIR:-$HOME/Notes}/todo.md"

tmux -L "${SOCKET}" \
  split-window -h \; \
  select-layout main-vertical \; \
  send-keys clear Enter schedule Space today Enter

tmux -L "${SOCKET}" \
  set-option -w -g remain-on-exit on \; \
  set-option -g status off \; \
  select-pane -t ':.{left-of}'
