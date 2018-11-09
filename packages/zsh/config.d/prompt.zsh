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
  local red='%{%F{red}%}'
  local blue='%{%F{blue}%}'
  local stop_foreground='%{%f%}'
  local stop_underline='%{%u%}'

  PROMPT="%(!.${red}.${blue})"'$VI_MODE_STYLE'">"
  PROMPT+="${stop_foreground}${stop_underline} "
}

autoload -Uz vcs_info
setopt prompt_subst

set_prompt
unset -f set_prompt
