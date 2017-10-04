#!/usr/bin/env bash

panel_width=60

# abort if the translation command doesn't exist
if ! command -v trans &> /dev/null; then
  exit 0
fi

# abort if there is already a translate panel in the current window
tmux list-panes -F '#{pane_start_command}' \
  | grep -q 'trans'
if [[ $? -eq 0 ]]; then
  exit 0
fi

# use pane index instead of id
# otherwise the restoring of pane seems to fail in case of id starting with %1
# ¯\_(ツ)_/¯
current_pane_index=$( tmux display -p '#{pane_index}' )
current_window_layout=$( tmux display -p '#{window_visible_layout}' )

# launch translation shell and at its end
# close panel, restore layout and active pane
translate_command="\
  trans --shell \
  && tmux kill-pane \; \
     select-layout '${current_window_layout}' \; \
     select-pane -t :.${current_pane_index} \
"

# create new active translate pane
# full window height, on most right part, with fixed width
tmux \
  select-pane -t :.right \; \
  split-window -hf -l "${panel_width}" "${translate_command}"
