#!/usr/bin/env bash

# Extract tokens from currently displayed pane (in copy-mode too)

TOKEN_TYPE="$1"

SPLIT_HEIGHT=20

GREP_FUNCTION=

case "${TOKEN_TYPE}" in
  hashes) GREP_FUNCTION=grep_hashes ;;
  lines) GREP_FUNCTION=grep_lines ;;
  paths) GREP_FUNCTION=grep_paths ;;
  urls)  GREP_FUNCTION=grep_urls ;;
  words) GREP_FUNCTION=grep_words ;;
  *) exit 1
esac


capture_current_pane() {
  local height=$( tmux display -p -F '#{pane_height}')
  local scroll_position=$( tmux display -p -F '#{scroll_position}')

  if [[ -z "${scroll_position}" ]]; then
    scroll_position=0
  fi

  local start="-${scroll_position}"
  local end=$(( height - scroll_position - 1 ))

  tmux capture-pane -pJ -S "${start}" -E "${end}"
}

grep_hashes() {
  grep --extended-regex --only-matching '[[:digit:]a-fA-F][-[:digit:]a-fA-F]{5,}'
}

grep_lines() {
  # trim spaces
  grep '.' | sed 's/^[ \t]*//;s/[ \t]*$//'
}

grep_paths() {
  grep --extended-regex --only-matching '[-_.~[:alnum:]]*/[-_./[:alnum:]]+'
}

grep_urls() {
  grep --extended-regex --only-matching 'https?://[[:alnum:]?=%/_.:,;~@!#$&*+-]*'
}


grep_words() {
  grep --extended-regex --only-matching '[-_.[:alnum:]]+'
}


ITEM=$(
  capture_current_pane \
    | "${GREP_FUNCTION}" \
    | sort --unique \
    | fzf-tmux -d "${SPLIT_HEIGHT}" -- \
        --expect=enter,ctrl-o,ctrl-s,ctrl-y \
)

[[ -n "${ITEM}" ]] || exit 0

KEY=$( echo "${ITEM}" | head --lines 1 )
TEXT=$( echo "${ITEM}" | tail --lines +2 )

case "${KEY}" in
  enter)
    tmux set-buffer -- "${TEXT}"
    tmux paste-buffer
    ;;
  ctrl-o)
    xdg-open "${TEXT}" > /dev/null
    ;;
  ctrl-s)
    xdg-open "https://www.google.com/search?q=${TEXT}" > /dev/null
    ;;
  ctrl-y)
    swaymsg clipboard "${TEXT}" > /dev/null
    ;;
esac

exit 0
