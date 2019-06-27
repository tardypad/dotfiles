#!/bin/sh

# Extract tokens from currently displayed pane (in copy-mode too)

# #FIXME: This script is not POSIX compliant
# it heavily relies on the -o option from GNU grep

TOKEN_TYPE="$1"

SPLIT_HEIGHT=20

GREP_FUNCTION=

case "${TOKEN_TYPE}" in
  hashes) GREP_FUNCTION=grep_hashes ;;
  lines) GREP_FUNCTION=grep_lines ;;
  paths) GREP_FUNCTION=grep_paths ;;
  urls)  GREP_FUNCTION=grep_urls ;;
  words) GREP_FUNCTION=grep_words ;;
  WORDS) GREP_FUNCTION=grep_WORDS ;;
  *) exit 1
esac

capture_current_pane() {
  HEIGHT=$( tmux display -p -F '#{pane_height}')
  SCROLL_POSITION=$( tmux display -p -F '#{scroll_position}')

  if [ -z "${SCROLL_POSITION}" ]; then
    SCROLL_POSITION=0
  fi

  START="-${SCROLL_POSITION}"
  END=$(( HEIGHT - SCROLL_POSITION - 1 ))

  tmux capture-pane -pJ -S "${START}" -E "${END}"
}

grep_hashes() {
  grep -E -o '[[:digit:]a-fA-F][-[:digit:]a-fA-F]{5,}'
}

grep_lines() {
  grep '.' | sed -e 's/^[ \t]*//' -e 's/[ \t]*$//'
}

grep_paths() {
  grep -E -o '[-_.~[:alnum:]]*/[-_./[:alnum:]]+'
}

grep_urls() {
  grep -E -o 'https?://[[:alnum:]?=%/_.:,;~@!#$&*+-]*'
}

grep_words() {
  grep -E -o '[-_.[:alnum:]]+'
}

grep_WORDS() {
  grep -E -o '[^ ]+'
}

ITEM=$(
  capture_current_pane \
    | "${GREP_FUNCTION}" \
    | sort -u \
    | fzf-tmux -d "${SPLIT_HEIGHT}" -- \
        --prompt "${TOKEN_TYPE}> " \
        --expect=enter,ctrl-o,ctrl-s,ctrl-y \
)

[ -n "${ITEM}" ] || exit 0

KEY=$( echo "${ITEM}" | head -n 1 )
TEXT=$( echo "${ITEM}" | tail -n +2 )

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
    wl-copy "${TEXT}" > /dev/null
    ;;
esac

exit 0
