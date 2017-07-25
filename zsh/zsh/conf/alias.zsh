# Prompt before overwrite/removal
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# auto color results
alias ls='ls --color=auto'
alias lh='ls -lh'
alias grep='grep --color=auto'

alias man=colored_man

alias pj='goto_project_repo'
alias PJ='goto_project_main'

# lxc-console uses different prefix for escape command
# (default Ctrl-a), not to conflict with tmux's one
alias lxc-console="lxc-console --escape='^q'"

alias mycli='mycli --defaults-group-suffix=_mycli'

# flush all .log files recursively in the current dir
alias flush_logs="find . -type f -name '*.log' -exec /bin/sh -c \"> '{}'\" \;"
