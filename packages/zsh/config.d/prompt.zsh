prompt_preexec() {
  # spacer between command and result, if there is any command ran
  if [ -n "$1" ]; then
    echo
  fi
}

prompt_precmd() {
  # spacer between last command result and new prompt
  echo
}

prompt_set() {
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

add-zsh-hook preexec prompt_preexec
add-zsh-hook precmd prompt_precmd
prompt_set

unset -f prompt_set
