# load dircolors
eval $( dircolors "${HOME}/.dircolors" )

# disable flow control within ZSH
setopt no_flow_control

# enable extended globbing features
setopt extended_glob

# allow comments in interactive mode
setopt interactivecomments

# no bell
unsetopt beep

# use run-help utility
unalias run-help 2> /dev/null
autoload -Uz run-help

# reuse ssh-agent across ttys
SSH_AGENT_FILE="${XDG_CACHE_HOME:-$HOME/.cache}/ssh-agent"
ssh-add -l >/dev/null 2>&1
if [ "$?" -eq 2 ]; then
  test -r "${SSH_AGENT_FILE}" && \
  eval "$( < "${SSH_AGENT_FILE}" )" >/dev/null

  ssh-add -l >/dev/null 2>&1
  if [ "$?" -eq 2 ]; then
    (umask 066; ssh-agent > "${SSH_AGENT_FILE}")
    eval "$( < "${SSH_AGENT_FILE}" )" >/dev/null
  fi
fi
unset SSH_AGENT_FILE

# send current theme OSC sequences on USR1 signal
TRAPUSR1() {
  theme -s
}
