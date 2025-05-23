# ring bell
alias bell="printf '\a'"

# disable leaky writes in current shell
alias noleak="unset HISTFILE"

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

# quick jump to often used folders
alias dc='cd "${XDG_DOCUMENTS_DIR:-$HOME/Documents}"'
alias dk='cd "${XDG_DESKTOP_DIR:-$HOME/Desktop}"'
alias dw='cd "${XDG_DOWNLOAD_DIR:-$HOME/Downloads}"'
alias nt='cd "${XDG_NOTES_DIR:-$HOME/Notes}"'

# bluetooth
alias btc='bluetooth connect'
alias btd='bluetooth disconnect'
alias btr='bluetooth receive'
alias bts='bluetooth send'

# source directory aliases
alias .a='cat .aliases 2> /dev/null && . ./.aliases'

alias td='${EDITOR} "${XDG_NOTES_DIR:-$HOME/Notes}/todo.md"'
alias wt='${EDITOR} "${XDG_NOTES_DIR:-$HOME/Notes}/waiting.md"'
alias lt='${EDITOR} "${XDG_NOTES_DIR:-$HOME/Notes}/later.md"'

alias tdy='schedule today'
alias tmw='schedule tomorrow'
alias sdd='schedule -d --'
alias sdw='schedule -w --'
alias sdm='schedule -m --'

alias g='git'
alias e='$EDITOR'

alias pg='pass git'

# get the definition of a word
alias def='trans -d'

alias ssht='ssh-tags'
alias qht='query-hosts-tags'

alias pj='goto-project repo'
alias PJ='goto-project main'

alias max='calculate maximum'
alias min='calculate minimum'
alias mean='calculate mean'
alias total='calculate sum'

alias b102='base 10 2'
alias b210='base 2 10'
alias b1016='base 10 16'
alias b1610='base 16 10'
alias b162='base 16 2'
alias b216='base 2 16'

alias rn='read-news'
alias tk='task'
alias tkl='task-log'
alias tt='time-tracker'
alias tto='time-tracker-overview'
alias tts='time-tracker-sum'
alias dnd='do-not-disturb'
alias pmd='pomodoro'
alias lbl='line-by-line'
alias mnt='mount-device'
alias pmx='pulsemixer'

# edit reminders for ad-hoc meetings
alias meet='${EDITOR} "${XDG_CONFIG_HOME:-$HOME/.config}/remind/notifications/meetings.rem"'

# smart cut on spaces
alias scut="tr -s ' ' '\t' | cut"

# DOS to Unix newlines
alias dos2unix="tr -d '\r'"

# Remove accents
alias unaccent="iconv -f UTF-8 -t ASCII//TRANSLIT"

# trim spaces
alias trim="sed -e 's/^ *//' -e 's/ *$//'"

# remove color sequences
alias nocolor="sed 's/\x1b\[[0-9;]*m//g'"

# clean the tmux pane before running a command
alias clean='clear && tmux clear-history &&'

# display calendar with 3 month spanning the date with week starting on monday
alias cal='cal --monday -3'

# disable status output on completion of some commands
alias mpc='mpc -q'

# delta features
alias dlt="export DELTA_FEATURES='+'"
alias dlt-ln="export DELTA_FEATURES='+line-numbers'"
alias dlt-sbs="export DELTA_FEATURES='+side-by-side'"
alias dlt-sbs-ln="export DELTA_FEATURES='+side-by-side-line-numbers'"

# temporary ssh usage for when connecting to rescue mode or such
# - don't limit the identities tried for authentication
# - don't check hash against known hosts
# - don't store hash in normal known hosts file
alias ssh-tmp='ssh -o "IdentitiesOnly no" -o "StrictHostKeyChecking no" -o "UserKnownHostsFile /dev/null" -q'
alias scp-tmp='scp -o "IdentitiesOnly no" -o "StrictHostKeyChecking no" -o "UserKnownHostsFile /dev/null" -q'

# switch to root
alias root='doas -s'

# allow doas with aliases
alias doas='doas '

# reload shell
alias reload='source "${HOME}/.zshrc"'

# generate a password (mainly used to encrypt files to share)
alias passwdgen='echo $( < /dev/urandom tr -d -C "[:graph:]" | dd bs=1 count=30 2> /dev/null )'

# retrieve my public IP
alias myip='curl -s https://api.ipify.org && printf "\n"'

# simple linters
alias json-lint='jq'
alias xml-lint='xmllint --format -'

# allow usage of * in queries without need for escaping
alias qalc='noglob qalc'

# flush all .log files recursively in the current dir
alias flush-logs="find . -type f -name '*.log' -exec /bin/sh -c \"printf '' > '{}'\" \;"

# tests
alias test-micro='{timeout 3s pw-record /tmp/test-micro.ogg || true } && pw-play /tmp/test-micro.ogg && rm -f /tmp/test-micro.ogg'
alias tm='test-micro'
alias test-sound='pw-play "${XDG_DATA_HOME:-$HOME/.local/share}/sounds/end_pomodoro.ogg"'
alias ts='test-sound'
alias test-webcam='mpv av://v4l2:/dev/video0'
alias tw='test-webcam'

alias swaylog='journalctl --user --identifier sway'
