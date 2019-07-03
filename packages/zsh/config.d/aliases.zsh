# Prompt before overwrite/removal
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# colorize outputs
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto --palette="rs=0:hd=1:ad={color/add/fg}:de={color/delete/fg}:ln={color/base0B/fg}"'

# ls alias
alias lh='ls -lh'

# quick jump to the Desktop playground
alias dk='cd "$( xdg-user-dir DESKTOP )"'

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
alias root='sudo -sE'

# generate a password (mainly used to encrypt files to share)
alias passwdgen='echo $( < /dev/urandom tr -d -C "[:graph:]" | dd bs=1 count=30 2> /dev/null )'

# retrieve my public IP
alias myip='https api.ipify.org'

# all packages update
alias packages-update="
  checkupdates \
  && aur repo -d aur -S --upgrades \
  && aur repo -d tardypad -S --upgrades \
  && sudo pacman -Syu \
  && tput setaf {color/notice/number} \
  && echo '-----------------------------' \
  && echo 'Review carefully the messages' \
  && echo '-----------------------------'
"

# simple linters
alias json-lint='python -m json.tool'
alias xml-lint='xmllint --format -'

alias pj='goto-project repo'
alias PJ='goto-project main'
alias logs='goto-project logs'
alias docs='goto-project docs'

# allow usage of * in queries without need for escaping
alias mysql-env='noglob mysql-env'
alias redis-env='noglob redis-env'
alias influx-env='noglob influx-env'
alias qalc='noglob qalc'

# flush all .log files recursively in the current dir
alias flush-logs="find . -type f -name '*.log' -exec /bin/sh -c \"printf '' > '{}'\" \;"

# HTTPie other schemes
alias https='http --default-scheme=https'

# simpler ungronning
alias ungron="gron --ungron"

# Silver searcher default options
alias ag='ag --color-match="1;{color/search_match/fg}" --color-path="{color/base09/fg}" --color-line-number="{color/base0A/fg}" --case-sensitive --skip-vcs-ignores --follow'
