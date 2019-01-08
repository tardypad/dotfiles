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
export GREP_COLORS='ms=1;{{{search_match/fg}}}:mc=1;{{{search_match/fg}}}:sl=:cx=:fn={{{base09/fg}}}:ln={{{base08/fg}}}:bn={{{base08/fg}}}:se={{{base0A/fg}}}'

# decrease key timeout to 100ms
export KEYTIMEOUT=10

# only alphanumeric characters are considered part of a word
# no other character is added
# (not used by vi-style movement bindings but define it just in case anyway)
export WORDCHARS=''

# fzf default options
export FZF_DEFAULT_OPTS="--height=20 --no-bold --color=bg:{{{background/number}}},fg:{{{foreground/number}}},hl:{{{base08/number}}},fg+:{{{base00/number}}},bg+:{{{current_item/number}}},hl+:{{{base05/number}}},info:{{{base08/number}}},prompt:{{{base08/number}}},pointer:{{{base00/number}}},marker:{{{selected_item/number}}},spinner:{{{base08/number}}}"

# fzf default find command
# only ignore build folder
export FZF_DEFAULT_COMMAND='ag --no-color -g "" --follow --skip-vcs-ignores --ignore "build/"'

# update SWAYSOCK variable on reload
eval $( tmux show-environment -s SWAYSOCK 2> /dev/null )

# set SWAYSOCK in systemd user environment
systemctl --user import-environment SWAYSOCK 2> /dev/null
