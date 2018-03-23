# Prompt before overwrite/removal
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# auto color results
alias ls='ls --color=auto'
alias lh='ls -lh'
alias grep='grep --color=auto'

alias man=colored_man

# reverse fzf when used in a terminal
# not included in FZF_DEFAULT_OPTS
# because we don't want this when used within vim
# (and there is no --noreverse option currently to overwrite it there)
alias fzf='fzf --reverse'

# most remote hosts don't have the tmux terminfo we use within tmux
alias ssh='TERM=xterm-256color ssh'

# switch to root
alias root='sudo --preserve-env --shell'

# simple linters
alias json_lint='python -m json.tool'
alias xml_lint='xmllint --format -'

alias pj='goto_project_repo'
alias PJ='goto_project_main'
alias logs='goto_project_logs'
alias docs='goto_project_docs'

# lxc-console uses different prefix for escape command
# (default Ctrl-a), not to conflict with tmux's one
alias lxc-console="lxc-console --escape='^q'"

alias mycli='mycli --defaults-group-suffix=_mycli'

# flush all .log files recursively in the current dir
alias flush_logs="find . -type f -name '*.log' -exec /bin/sh -c \"> '{}'\" \;"

# HTTPie other schemes
alias https='http --default-scheme=https'

# Reload all named vim servers config
alias reload_all_vim="
  vim --serverlist \
  | xargs -I {} vim --servername {} --remote-send '<Esc>:source \$MYVIMRC<CR>'
"

# reload all interactive zsh shells
alias reload_all_zsh='killall --signal USR1 zsh'
