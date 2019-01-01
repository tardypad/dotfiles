# Make vim the default editor everywhere
export EDITOR=vim

# define replacement for redirections with no command
export NULLCMD=:
export READNULLCMD=less

# default less options
# defining them in the #env part of lesskey
# seems to break even more stuff around...
export LESS='--ignore-case --line-numbers --chop-long-lines --RAW-CONTROL-CHARS'

# decrease key timeout to 100ms
export KEYTIMEOUT=10

# only alphanumeric characters are considered part of a word
# no other character is added
# (not used by vi-style movement bindings but define it just in case anyway)
export WORDCHARS=''

# fzf default options
export FZF_DEFAULT_OPTS="--height=20 --no-bold --color=bg:{{{background/number}}},fg:{{{foreground/number}}},hl:{{{base0D/number}}},fg+:{{{base00/number}}},bg+:{{{selected_item/number}}},hl+:{{{base06/number}}},info:{{{base0D/number}}},prompt:{{{base0D/number}}},pointer:{{{base00/number}}},marker:{{{base06/number}}},spinner:{{{base0D/number}}}"

# fzf default find command
# only ignore build folder
export FZF_DEFAULT_COMMAND='ag --no-color -g "" --follow --skip-vcs-ignores --ignore "build/"'

# update SWAYSOCK variable on reload
eval $( tmux show-environment -s SWAYSOCK 2> /dev/null )

# set SWAYSOCK in systemd user environment
systemctl --user import-environment SWAYSOCK 2> /dev/null
