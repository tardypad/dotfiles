#!/bin/sh

SOCKET="$1"
SESSION_NAME="$2"

WEE_MOST_PATH=$( project-path repo wee-most )
WEE_SLACK_PATH=$( project-path repo wee-slack )

tmux -L "${SOCKET}" \
  new-session -d \
  -s "${SESSION_NAME}" \
  -n 'terminal' \
  -c "${WEE_MOST_PATH}"

tmux -L "${SOCKET}" \
  split-window -dh \
  -c "${WEE_MOST_PATH}" \
  "find -type f -name '*.py' | entr make"

tmux -L "${SOCKET}" \
  new-window \
  -n 'code' \
  -c "${WEE_MOST_PATH}" \
  "vim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md"

tmux -L "${SOCKET}" \
  new-window \
  -n 'wee-slack' \
  -c "${WEE_SLACK_PATH}"

tmux -L "${SOCKET}" \
  split-window -h \
  -c "${WEE_SLACK_PATH}" \
  vim wee_slack.py

tmux -L "${SOCKET}" \
  select-window \
  -t ':terminal'
