# Make vim the default editor everywhere
export EDITOR=vim

# define replacement for redirections with no command
export NULLCMD=:
export READNULLCMD=less

# default less options
# defining them in the #env part of lesskey
# seems to break even more stuff around...
export LESS='--ignore-case --line-numbers --chop-long-lines --RAW-CONTROL-CHARS'

# change grep output colors
export GREP_COLORS='ms=1;{color/search_match/fg}:mc=1;{color/search_match/fg}:sl=:cx=:fn={color/base09/fg}:ln={color/base08/fg}:bn={color/base08/fg}:se={color/base0A/fg}'

# decrease key timeout to 100ms
export KEYTIMEOUT=10

# only alphanumeric characters are considered part of a word
# no other character is added
# (not used by vi-style movement bindings but define it just in case anyway)
export WORDCHARS=''

# fzf default options
export FZF_DEFAULT_OPTS="--height=20 --no-bold --color=bg:{color/background/number},fg:{color/foreground/number},hl:{color/base08/number},fg+:{color/base00/number},bg+:{color/current_item/number},hl+:{color/base05/number},info:{color/base08/number},prompt:{color/base08/number},pointer:{color/base00/number},marker:{color/selected_item/number},spinner:{color/base08/number}"

# fzf default find command
# only ignore build folder
export FZF_DEFAULT_COMMAND='ag --no-color -g "" --follow --skip-vcs-ignores --ignore "build/"'

# update SWAYSOCK variable on reload
eval $( tmux show-environment -s SWAYSOCK 2> /dev/null )

# set SWAYSOCK in systemd user environment
systemctl --user import-environment SWAYSOCK 2> /dev/null

# tell ssh to use gpg agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# switch pinentry display to current shell
gpg-connect-agent updatestartuptty /bye > /dev/null
