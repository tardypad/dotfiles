# Make vim the default editor everywhere
export EDITOR=vim

# define replacement for redirections with no command
export NULLCMD=:
export READNULLCMD=less

# default less options
# defining them in the #env part of lesskey
# seems to break even more stuff around...
LESS='--ignore-case'
LESS="${LESS} --line-numbers"
LESS="${LESS} --chop-long-lines"
LESS="${LESS} --RAW-CONTROL-CHARS"
export LESS

# change grep output colors
GREP_COLORS='ms=1;{color/search_match/fg}'
GREP_COLORS="${GREP_COLORS}:mc=1;{color/search_match/fg}"
GREP_COLORS="${GREP_COLORS}:sl="
GREP_COLORS="${GREP_COLORS}:cx="
GREP_COLORS="${GREP_COLORS}:fn={color/base09/fg}"
GREP_COLORS="${GREP_COLORS}:ln={color/base0A/fg}"
GREP_COLORS="${GREP_COLORS}:bn={color/base0A/fg}"
GREP_COLORS="${GREP_COLORS}:se={color/base08/fg}"
export GREP_COLORS

# decrease key timeout to 100ms
export KEYTIMEOUT=10

# only alphanumeric characters are considered part of a word
# no other character is added
# (not used by vi-style movement bindings but define it just in case anyway)
export WORDCHARS=''

# fzf default options
FZF_DEFAULT_OPTS='--height=20 --no-bold --color='
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS}bg:{color/background/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},fg:{color/foreground/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},hl:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},fg+:{color/base00/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},bg+:{color/current_item/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},hl+:{color/base05/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},info:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},prompt:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},pointer:{color/base00/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},marker:{color/selected_item/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},spinner:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},border:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},header:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},gutter:{color/background/number}"
export FZF_DEFAULT_OPTS

# fzf default find command
# only ignore build folder
export FZF_DEFAULT_COMMAND='ag --no-color -g "" --follow --skip-vcs-ignores --ignore "build/"'

# update SWAYSOCK variable on reload
eval $( tmux show-environment -s SWAYSOCK 2> /dev/null )

# tell ssh to use gpg agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
