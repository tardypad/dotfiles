# load dircolors
eval $( dircolors "${HOME}/.dircolors" )

# enable changing directories without typing cd
setopt auto_cd

# disable flow control within ZSH
setopt no_flow_control

# use run-help utility
unalias run-help 2> /dev/null
autoload -Uz run-help

# reuse ssh-agent across ttys
ssh-add -l >/dev/null 2>&1
if [ "$?" -eq 2 ]; then
  test -r ~/.cache/ssh-agent && \
  eval "$( < ~/.cache/ssh-agent )" >/dev/null

  ssh-add -l >/dev/null 2>&1
  if [ "$?" -eq 2 ]; then
    (umask 066; ssh-agent > ~/.cache/ssh-agent)
    eval "$( < ~/.cache/ssh-agent )" >/dev/null
  fi
fi
