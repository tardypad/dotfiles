do-not-disturb(1)

# NAME

do-not-disturb - Manage "Do not disturb" mode

# SYNOPSIS

do-not-disturb [ *status* | *disable* ]

do-not-disturb ( *enable* | *toggle* ) [ _info_ ]

# DESCRIPTION

Manage "Do not disturb" mode. It updates mode on various places:
- locally on system
- in Slack chat
- on remote server

# OPERANDS

*status*
	Display whether the "Do not disturb" mode is "enabled" or "disabled"++
This is the default action if none is specified

*disable*
	Disable "Do not disturb" mode

*enable*
	Enable "Do not disturb" mode

*toggle*
	Toggle "Do not disturb" mode

_info_
	Extra information when the "Do not disturb" mode is enabled

# DEPENDENCIES

- ssh
- weechat-fifo
