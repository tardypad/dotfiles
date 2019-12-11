tmux-env(1)

# NAME

tmux-env - Start tmux environment session

# SYNOPSIS

tmux-env [-b] _target_ [_session_]

# DESCRIPTION

Start a session of a tmux environment

# OPTIONS

*-b*
	launch in background, no attach

# OPERANDS

_target_
	Environment target

_session_
	_target_' session to start++
If none specified, a new empty one is created

# DEPENDENCIES

- tmux
