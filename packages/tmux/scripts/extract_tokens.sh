#!/usr/bin/env bash

# Extract tokens from currently displayed pane (in copy-mode too)

TOKEN_TYPE="$1"

SPLIT_HEIGHT=20

GREP_FUNCTION=

case "${TOKEN_TYPE}" in
  lines) GREP_FUNCTION=grep_lines ;;
  urls)  GREP_FUNCTION=grep_urls ;;
  words) GREP_FUNCTION=grep_words ;;
  *) exit 1
esac


function capture_current_pane() {
  local height=$( tmux display -p -F '#{pane_height}')
  local scroll_position=$( tmux display -p -F '#{scroll_position}')

  if [[ -z "${scroll_position}" ]]; then
    scroll_position=0
  fi

  local start="-${scroll_position}"
  local end=$(( height - scroll_position - 1 ))

  tmux capture-pane -pJ -S "${start}" -E "${end}"
}


function grep_lines() {
  grep '.'
}


function grep_urls() {
  grep --extended-regex --only-matching 'https?://[[:alnum:]?=%/_.:,;~@!#$&*+-]*'
}


function grep_words() {
  grep --extended-regex --only-matching '[-_.[:alnum:]]+'
}


ITEM=$(
  capture_current_pane \
    | "${GREP_FUNCTION}" \
    | sort --unique \
    | fzf-tmux -d "${SPLIT_HEIGHT}"
)

[[ -n "${ITEM}" ]] || exit 0

tmux set-buffer -- "${ITEM}"
tmux paste-buffer
