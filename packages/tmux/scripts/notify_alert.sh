#!/usr/bin/env bash

ALERT_TYPE="$1"
ALERT_SOCKET_PATH="$2"
ALERT_SESSION_ID="$3"
ALERT_WINDOW_ID="$4"

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
  notify_tmux_alert \
    "${ALERT_TYPE}" \
    "${ALERT_SOCKET_PATH##*/}" \
    "${ALERT_SESSION_ID#$}" \
    "${ALERT_SESSION_NAME}" \
    "${ALERT_WINDOW_ID#@}" \
    "${ALERT_WINDOW_NAME}"
fi
