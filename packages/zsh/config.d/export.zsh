# Make vim the default editor everywhere
export EDITOR=vim

# define replacement for redirections with no command
export NULLCMD=:
export READNULLCMD=less

# default less options
# defining them in the #env part of lesskey
# seems to break even more stuff around...
export LESS='--ignore-case --line-numbers --chop-long-lines --RAW-CONTROL-CHARS'

# decrease key timeout to 50ms
export KEYTIMEOUT=5

# only alphanumeric characters are considered part of a word
# no other character is added
# (not used by vi-style movement bindings but define it just in case anyway)
export WORDCHARS=''

# fzf default options
export FZF_DEFAULT_OPTS="--height=20 --no-bold --color=bg:8,fg:12,hl:3,fg+:8,bg+:3,info:4,prompt:4,pointer:8,marker:7,spinner:4"

# fzf default find command
# only ignore build folder
export FZF_DEFAULT_COMMAND='ag --no-color -g "" --follow --skip-vcs-ignores --ignore "build/"'

# set SWAYSOCK and DISPLAY in systemd user environment if sway is running
if env | grep --quiet SWAYSOCK; then
  systemctl --user import-environment SWAYSOCK DISPLAY 2> /dev/null
fi

# set PATH in systemd user environment
systemctl --user import-environment PATH 2> /dev/null
