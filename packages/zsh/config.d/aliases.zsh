# Prompt before overwrite/removal
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# colorize outputs
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto --palette="rs=0:hd=1:ad={color/add/fg}:de={color/delete/fg}:ln={color/base0B/fg}"'
alias ncdu='ncdu --color=dark'

# ls alias
alias lh='ls -lh'

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
  cat <<- EOF | column -t
	User   $(tput setaf {color/base08/number})${USERNAME}$(tput sgr0)
	Host   $(tput setaf {color/base09/number})${HOST}$(tput sgr0)
	Dir    $(tput setaf {color/base0A/number})$( print -D "${PWD}" )$(tput sgr0)
	Branch $(tput setaf {color/base0B/number})$( git current-branch 2> /dev/null || print "none" )$(tput sgr0)
	EOF
'

# generate a password (mainly used to encrypt files to share)
alias passwdgen='echo $( < /dev/urandom tr --delete --complement "[:graph:]" | head --bytes 30 )'

# retrieve my public IP
alias myip='https api.ipify.org'

# similar usage
alias timer=stopwatch

# all packages update
alias packages-update="
  checkupdates \
  && aur repo --database aur --sync --upgrades \
  && aur repo --database tardypad --sync --upgrades \
  && sudo pacman --sync --refresh --sysupgrade \
  && tput setaf {color/notice/number} \
  && echo '-----------------------------' \
  && echo 'Review carefully the messages' \
  && echo '-----------------------------'
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
alias ag='ag --color-match="1;{color/search_match/fg}" --color-path="{color/base09/fg}" --color-line-number="{color/base0A/fg}" --case-sensitive --skip-vcs-ignores --follow'
