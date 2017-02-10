# ensure we have the correct locale set
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Make vim the default editor everywhere
export EDITOR=vim

# Use 256 colors in terminal
if [[ -n $TMUX ]]; then
  export TERM=screen-256color
else
  export TERM=xterm-256color
fi

# define replacement for redirections with no command
export NULLCMD=:
export READNULLCMD=less

# define projects location
export PROJECTS_DIR="$HOME/Projects"
