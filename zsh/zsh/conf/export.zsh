# Make vim the default editor everywhere
export EDITOR=vim

# Use 256 colors in terminal
if [[ -n $TMUX ]]; then
  export TERM=tmux-256color
else
  export TERM=xterm-256color
fi

# define replacement for redirections with no command
export NULLCMD=:
export READNULLCMD=less

# decrease key timeout to 50ms
export KEYTIMEOUT=5

# fzf config
export FZF_DEFAULT_OPTS="
--reverse
--height=20
--no-bold
--color=bg:8,fg:12,hl:3,fg+:8,bg+:3,info:4,prompt:4,pointer:8,marker:7,spinner:4
"

# set SWAYSOCK in systemd user environment if sway is running
if env | grep --quiet SWAYSOCK; then
  systemctl --user import-environment SWAYSOCK
fi
