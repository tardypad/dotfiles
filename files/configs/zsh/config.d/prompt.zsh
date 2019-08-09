# define modes symbol
VI_INS_MODE_SYMBOL='>'
VI_CMD_MODE_SYMBOL='<'

# define initial mode
VI_MODE_SYMBOL="${VI_INS_MODE_SYMBOL}"

# on keymap change, define the mode and redraw prompt
zle-keymap-select() {
  if [ "${KEYMAP}" = 'vicmd' ]; then
    VI_MODE_SYMBOL="${VI_CMD_MODE_SYMBOL}"
  else
    VI_MODE_SYMBOL="${VI_INS_MODE_SYMBOL}"
  fi
  zle reset-prompt
}
zle -N zle-keymap-select

# reset to default mode at the end of line input reading
zle-line-finish() {
  VI_MODE_SYMBOL="${VI_INS_MODE_SYMBOL}"
}
zle -N zle-line-finish

# Fix a bug when you C-c in CMD mode, you'd be prompted with CMD mode indicator
# while in fact you would be in INS mode.
# Fixed by catching SIGINT (C-c), set mode to INS and repropagate the SIGINT,
# so if anything else depends on it, we will not break it.
TRAPINT() {
  VI_MODE_SYMBOL="${VI_INS_MODE_SYMBOL}"
  return $(( 128 + $1 ))
}

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
  local normal='%{%F{{color/base0A/name}}%}'
  local underline='%{%U%}'
  local bold='%{%B%}'
  local stop_foreground='%{%f%}'
  local stop_underline='%{%u%}'
  local stop_bold='%{%b%}'

  PROMPT=
  # red prompt for root, blue otherwise
  PROMPT="${PROMPT}%(!.${root}.${normal})"
  # underline prompt if last command exited unsuccessfully
  PROMPT="${PROMPT}%(?..${underline})"
  # add bold symbol based on vi mode
  PROMPT="${PROMPT}${bold}"'$VI_MODE_SYMBOL'"${stop_bold}"
  # clear styling and add space
  PROMPT="${PROMPT}${stop_foreground}${stop_underline} "
}

setopt prompt_subst

autoload -U add-zsh-hook
add-zsh-hook preexec prompt_preexec
add-zsh-hook precmd prompt_precmd
prompt_set

unset -f prompt_set
