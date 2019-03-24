#!/usr/bin/env bash

ALERT_TYPE="$1"
ALERT_SOCKET_PATH="$2"
ALERT_SESSION_ID="$3"
ALERT_WINDOW_ID="$4"

CURRENT_SESSION_WINDOW=$(
  tmux list-sessions \
    -F '#{?session_attached,attached,} #{session_id}:#{window_id}' \
    | grep attached \
    | cut --fields 2 --delimiter ' '
)

ALERT_SESSION_WINDOW="${ALERT_SESSION_ID}:${ALERT_WINDOW_ID}"

if [[ "${CURRENT_SESSION_WINDOW}" == "${ALERT_SESSION_WINDOW}" ]]; then
  # do nothing if alert comes from currently attached session and active window
  exit
fi

ALERT_SESSION_NAME=$(
  tmux list-sessions -F '#{session_id} #{session_name}' \
    | grep "^${ALERT_SESSION_ID} " \
    | cut --fields 2- --delimiter ' '
)
ALERT_WINDOW_NAME=$(
  tmux list-windows -t "${SESSION_ID}" -F '#{window_id} #{window_name}' \
    | grep "^${ALERT_WINDOW_ID} " \
    | cut --fields 2- --delimiter ' '
)

MESSAGE="${ALERT_TYPE}"
MESSAGE+=" in session \"${ALERT_SESSION_NAME}\""
MESSAGE+=" window \"${ALERT_WINDOW_NAME}\""

tmux display-message "${MESSAGE}"

if [[ -n ${DISPLAY} ]]; then
  ALERT_SOCKET_NAME=${ALERT_SOCKET_PATH##*/}

  notify_tmux_alert \
    "${ALERT_TYPE}" \
    "${ALERT_SOCKET_NAME}" \
    "${ALERT_SESSION_NAME}" \
    "${ALERT_WINDOW_NAME}"
fi
