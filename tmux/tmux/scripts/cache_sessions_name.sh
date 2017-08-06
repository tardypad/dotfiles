#!/usr/bin/env zsh

tmux list-sessions -F "#{session_name}" \
  | xargs -I {} tmux run -b '#(echo {} | sed "s/^[0-9]*-//")'

# wait a bit to make sure the last result gets processed fully
# so that it can get directly displayed
sleep 0.05
