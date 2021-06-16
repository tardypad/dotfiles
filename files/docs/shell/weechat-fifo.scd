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
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/weechat/weechat_fifo_
	Weechat FIFO pipe

# DEPENDENCIES

None
