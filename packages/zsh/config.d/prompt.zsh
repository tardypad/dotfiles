preexec() {
  # spacer between command and result, if there is any command ran
  if [ -n "$1" ]; then
    echo
  fi
}

precmd() {
  # spacer between last command result and new prompt
  echo
}

set_prompt() {
  local root='%{%F{{color/alert/name}}%}'
  local normal='%{%F{{color/base08/name}}%}'
  local underline='%{%U%}'
  local bold='%{%B%}'
  local stop_foreground='%{%f%}'
  local stop_underline='%{%u%}'
  local stop_bold='%{%b%}'

  PROMPT=
  # red prompt for root, blue otherwise
  PROMPT+="%(!.${root}.${normal})"
  # underline prompt if last command exited unsuccessfully
  PROMPT+="%(?..${underline})"
  # add bold symbol based on vi mode
  PROMPT+="${bold}"'$VI_MODE_SYMBOL'"${stop_bold}"
  # clear styling and add space
  PROMPT+="${stop_foreground}${stop_underline} "
}

setopt prompt_subst

set_prompt
unset -f set_prompt
