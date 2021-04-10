tmux-env(1perso)

# NAME

tmux-env - Start tmux environment session

# SYNOPSIS

tmux-env [-b] _env_ [_session_]

# DESCRIPTION

Start a session of a tmux environment

# OPTIONS

*-b*
	launch in background, no attach

# OPERANDS

_env_
	Environment identifier

_session_
	_env_' session to start++
If none specified, a new empty one is created

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

# FILES

_$XDG_DATA_HOME/env/tmux/\*.sh_
	Files defining the tmux environment

# DEPENDENCIES

- tmux
