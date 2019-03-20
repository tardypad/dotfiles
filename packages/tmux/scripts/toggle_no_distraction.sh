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

  # #IDEA: once using Sway 1.0, we should be able to hide the top bar
  # instead of going fullscreen so that launchers can still be displayed
  # maybe only for the soft mode?
  if [[ "${action}" == 'enable' && "${fullscreen_status}" = '0' ]] \
     || [[ "${action}" == 'disable' && "${fullscreen_status}" = '1' ]]; then
    swaymsg -t command fullscreen &> /dev/null
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
    # only reenable for tmux env sessions (same as default config)
    if tmux show-environment -g TMUX_ENV &> /dev/null; then
      tmux set -g status on
    fi
  fi
}

is_no_distraction_mode_enabled() {
  [[ -f "${FILE_PATH}" ]]
}

no_distraction_mode_enable() {
  tmux_status_line 'hide'
  sway_fullscreen 'enable'

  if [ "${LEVEL}" == 'hard' ]; then
    # #IDEA: hard mode could also disable all sway and tmux bindings until exited (only existing bindings)
    # to force focus on current activity
    # That would also make the following issue "impossible":
    # if we change session/window during the "no distraction" mode and exit the mode
    # then the initial pane is not unzoomed
    # (other fix would included storing the session/window within the FILE_PATH to select it back)
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
