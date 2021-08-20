weechat-fifo(1perso)

# NAME

weechat-fifo - Remote control of weechat via FIFO pipe

# SYNOPSIS

weechat-fifo [_buffer_] < data

# DESCRIPTION

Remote control of weechat via FIFO pipe. Text or command is read from
standard input.

# OPTIONS

None

# OPERANDS

_buffer_
	Buffer to use++
Default: current one

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files

_XDG_CACHE_HOME_
	Path to user-specific base directory to store cached data++
If unset, defaults to $HOME/.cache

# FILES

_$XDG_RUNTIME_DIR/weechat/weechat_fifo_++
or _$XDG_CACHE_HOME/weechat/weechat_fifo_ if _XDG_RUNTIME_DIR_ unset
	Weechat FIFO pipe

# DEPENDENCIES

None
