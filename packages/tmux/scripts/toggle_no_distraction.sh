#!/usr/bin/env bash

LEVEL="$1"

init_variables() {
  FILE_PATH="${XDG_RUNTIME_DIR}/tmux_no_distraction"

  [ -n "${DISPLAY}" ] || return

  CURRENT_SWAY_WINDOW=$(
    swaymsg -t get_tree \
      | jq 'recurse(.nodes[]?) | select(.focused == true)'
  )

  CURRENT_SWAY_WINDOW_ID=$( echo "${CURRENT_SWAY_WINDOW}" | jq '.id' )

  FILE_PATH+="_${CURRENT_SWAY_WINDOW_ID}"
}

sway_fullscreen() {
  [ -n "${DISPLAY}" ] || return

  local action="$1"

  local fullscreen_status=$( echo "${CURRENT_SWAY_WINDOW}" | jq '.fullscreen_mode' )

  if [[ "${action}" == 'enable' && "${fullscreen_status}" = '0' ]] \
     || [[ "${action}" == 'disable' && "${fullscreen_status}" = '1' ]]; then
    swaymsg --quiet fullscreen &> /dev/null
  fi
}

tmux_pane_zoom() {
  local action="$1"

  local zoom_status=$( tmux display -p '#{window_zoomed_flag}' )

  if [[ "${action}" == 'enable' && "${zoom_status}" = '0' ]] \
     || [[ "${action}" == 'disable' && "${zoom_status}" = '1' ]]; then
    tmux resize-pane -Z
  fi
}

tmux_status_line() {
  local action="$1"

  if [[ "${action}" == 'hide' ]]; then
    tmux set -g status off
  elif [[ "${action}" == 'show' ]]; then
    tmux set -g status on
  fi
}

is_no_distraction_mode_enabled() {
  [[ -f "${FILE_PATH}" ]]
}

no_distraction_mode_enable() {
  tmux_status_line 'hide'
  sway_fullscreen 'enable'

  if [ "${LEVEL}" == 'hard' ]; then
    tmux_pane_zoom 'enable'
  fi

  touch "${FILE_PATH}"
}

no_distraction_mode_disable() {
  tmux_status_line 'show'
  sway_fullscreen 'disable'
  tmux_pane_zoom 'disable'

  rm -f "${FILE_PATH}"
}


init_variables

if is_no_distraction_mode_enabled; then
  no_distraction_mode_disable
else
  no_distraction_mode_enable
fi
