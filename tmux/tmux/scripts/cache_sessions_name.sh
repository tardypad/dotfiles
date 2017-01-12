#!/bin/sh

tmux list-sessions -F "#{session_name}" \
  | xargs -I {} tmux run -b '#(echo {} | sed "s/^[0-9]*-//")'
