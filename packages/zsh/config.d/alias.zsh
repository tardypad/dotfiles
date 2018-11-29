# Prompt before overwrite/removal
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# auto color results
alias ls='ls --color=auto'
alias lh='ls -lh'
alias grep='grep --color=auto'

# display calendar for full year with week number and Monday as week start
alias calendar='cal --monday --week --year'

# reverse fzf when used in a terminal
# not included in FZF_DEFAULT_OPTS
# because we don't want this when used within vim
# (and there is no --noreverse option currently to overwrite it there)
alias fzf='fzf --reverse'

# most remote hosts don't have the tmux terminfo we use within tmux
alias ssh='TERM=xterm-256color ssh'

# switch to root
alias root='sudo --preserve-env --shell'

# general info about the current shell
alias status='
  cat << EOF | column -t
User ${USERNAME}
Host ${HOST}
Dir  $( print -D "${PWD}" )
EOF
'

# generate a password (mainly used to encrypt files to share)
alias passwdgen='< /dev/urandom tr --delete --complement "[:graph:]" | head --bytes 30; echo'

# innocent looking name for hacker typer
alias manual-process=hacker-typer

# retrieve my public IP
alias myip='https api.ipify.org'

# similar usage
alias timer=stopwatch

# all packages update
alias packages-update="
  checkupdates \
  && aurcheck -d aur \
  && aurcheck -d tardypad \
  && sudo pacman --sync --refresh --sysupgrade \
  && aursync --update --repo aur \
  && aursync --update --repo tardypad
"

# simple linters
alias json-lint='python -m json.tool'
alias xml-lint='xmllint --format -'

alias pj='goto-project-repo'
alias PJ='goto-project-main'
alias logs='goto-project-logs'
alias docs='goto-project-docs'

# allow usage of * in queries without need for escaping
alias mysql-env='noglob mysql-env'
alias redis-env='noglob redis-env'
alias influx-env='noglob influx-env'
alias qalc='noglob qalc'

# flush all .log files recursively in the current dir
alias flush-logs="find . -type f -name '*.log' -exec /bin/sh -c \"> '{}'\" \;"

# HTTPie other schemes
alias https='http --default-scheme=https'

# simpler ungronning
alias ungron="gron --ungron"

# Silver searcher default options
alias ag='ag --smart-case --skip-vcs-ignores --follow'

# quick temper
alias :w="echo 'Do I look like vim to you?...'; emoji-animate disapprove"
alias :wq=:w
alias :q=:w
