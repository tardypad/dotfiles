#!/usr/bin/env bash

panel_command="$1"
panel_width="$2"

panel_main_command=$(
  echo "${panel_command}" \
    | cut -d " " -f1
)

# abort if the panel main command doesn't exist
if ! command -v "${panel_main_command}" &> /dev/null; then
  exit 0
fi

# abort if there is already a panel with that command in the current window
tmux list-panes -F '#{pane_start_command}' \
  | grep -q "${panel_command}"
if [[ $? -eq 0 ]]; then
  exit 0
fi

# use pane index instead of id
# otherwise the restoring of pane seems to fail in case of id starting with %1
# ¯\_(ツ)_/¯
current_pane_index=$( tmux display -p '#{pane_index}' )
current_window_layout=$( tmux display -p '#{window_visible_layout}' )

# launch panel with command and at its end
# close panel, restore layout and active pane
panel_full_command="\
  ${panel_command}; \
  tmux kill-pane \; \
    select-layout '${current_window_layout}' \; \
    select-pane -t :.${current_pane_index} \
"

# create new active pane
# full window height, on most right part, with fixed width
tmux \
  select-pane -t :.right \; \
  split-window -hf -l "${panel_width}" "${panel_full_command}"
