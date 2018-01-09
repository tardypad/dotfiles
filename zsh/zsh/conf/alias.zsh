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
alias logs='goto_project_logs'
alias docs='goto_project_docs'

# animated emojis
alias fliptable='insert_emoji -a fliptable'
alias cool='insert_emoji -a cool'
alias shrug='insert_emoji -a shrug'
alias disapprove='insert_emoji -a disapprove'
alias happygary='insert_emoji -a happygary'

# lxc-console uses different prefix for escape command
# (default Ctrl-a), not to conflict with tmux's one
alias lxc-console="lxc-console --escape='^q'"

alias mycli='mycli --defaults-group-suffix=_mycli'

# flush all .log files recursively in the current dir
alias flush_logs="find . -type f -name '*.log' -exec /bin/sh -c \"> '{}'\" \;"

# HTTPie other schemes
alias https='http --default-scheme=https'

# Reload all named vim servers config
alias reload_vim="
  vim --serverlist \
  | xargs -I {} vim --servername {} --remote-send '<Esc>:source \$MYVIMRC<CR>'
"
