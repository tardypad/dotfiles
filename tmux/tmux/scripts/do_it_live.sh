#!/usr/bin/env bash

image_path="${HOME}/.tmux/images/doitlive"
session_name="Fuck it, we'll do it live!"
window_name="What could possibly go wrong?"

# define left margin for centered image on left pane
window_width=$( tmux display -p '#{window_width}' )
image_width=$( wc --max-line-length < "${image_path}" )
margin_left_width=$(( ( (${window_width} / 2) - ${image_width} ) / 2 ))
margin_left=$( printf '%*s' ${margin_left_width} )

# define top margin for centered image on left pane
window_height=$( tmux display -p '#{window_height}' )
image_height=$( wc --lines < "${image_path}" )
margin_top_height=$(( ( ${window_height} - ${image_height} ) / 2 ))
margin_top=$( printf '%*s' ${margin_top_height} | sed 's/ / \n/g' )

# command to display Bill centered until q key is pressed
display_command="cat <( echo \"${margin_top}\" ) ${image_path} \
  | sed 's/^/${margin_left}/' \
  && read -s -d q"

# better do things live on a clean plate
if tmux has-session -t "${session_name}"; then
  tmux kill-session -t "${session_name}"
fi

# new FIWDIL session with image on the left and work on the right
tmux new-session -d -s "${session_name}" -n "${window_name}"
tmux split-window -h -b \
  -t "${session_name}:${window_name}.1" \
  "${display_command}"
tmux switch-client -t "${session_name}:${window_name}.2"
