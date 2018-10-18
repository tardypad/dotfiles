# Prompt before overwrite/removal
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# auto color results
alias ls='ls --color=auto'
alias lh='ls -lh'
alias grep='grep --color=auto'

# reverse fzf when used in a terminal
# not included in FZF_DEFAULT_OPTS
# because we don't want this when used within vim
# (and there is no --noreverse option currently to overwrite it there)
alias fzf='fzf --reverse'

# most remote hosts don't have the tmux terminfo we use within tmux
alias ssh='TERM=xterm-256color ssh'

# switch to root
alias root='sudo --preserve-env --shell'

# generate a password (mainly used to encrypt files to share)
alias passwdgen='< /dev/urandom tr --delete --complement "[:graph:]" | head --bytes 30; echo'

# innocent looking name for hacker typer
alias manual_process=hacker_typer

# retrieve my public IP
alias whatismyip='https api.ipify.org'

# similar usage
alias timer=stopwatch

# all packages update
alias packages_update="
  checkupdates \
  && aurcheck -d aur \
  && aurcheck -d tardypad \
  && sudo pacman --sync --refresh --sysupgrade \
  && aursync --update --repo aur \
  && aursync --update --repo tardypad
"

# simple linters
alias json_lint='python -m json.tool'
alias xml_lint='xmllint --format -'

alias pj='goto_project_repo'
alias PJ='goto_project_main'
alias logs='goto_project_logs'
alias docs='goto_project_docs'

# allow usage of * in queries without need for escaping
alias mysql_env='noglob mysql_env'
alias redis_env='noglob redis_env'
alias influx_env='noglob influx_env'

# flush all .log files recursively in the current dir
alias flush_logs="find . -type f -name '*.log' -exec /bin/sh -c \"> '{}'\" \;"

# HTTPie other schemes
alias https='http --default-scheme=https'

# Silver searcher default options
alias ag='ag --smart-case --skip-vcs-ignores --follow'

# quick temper
alias :w="echo 'Do I look like vim to you?...'; emoji_animate disapprove"
alias :wq=:w
alias :q=:w
