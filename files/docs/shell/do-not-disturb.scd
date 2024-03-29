DO-NOT-DISTURB(1perso)

# NAME

do-not-disturb - Manage "Do not disturb" mode

# SYNOPSIS

do-not-disturb [ *status* | *remote-status* | *disable* ]

do-not-disturb [-d _duration_] [-w _work_] ( *enable* | *toggle* )

# DESCRIPTION

Manage "Do not disturb" mode. It updates mode on various places:
- locally on system
- on remote server
- in WeeChat servers

# OPTIONS

*-d* _duration_
	Enable "Do not disturb" mode during _duration_ minutes

*-w* _work_
	Work information about the cause of the "Do not disturb" mode being enabled

# OPERANDS

*status*
	Display whether the "Do not disturb" mode is "enabled" or "disabled"++
This is the default action if none is specified

*remote-status*
	Display "Do not disturb" mode from remote server

*disable*
	Disable "Do not disturb" mode

*enable*
	Enable "Do not disturb" mode

*toggle*
	Toggle "Do not disturb" mode

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/do_not_disturb_
	File used as a flag to store the status of the mode

# DEPENDENCIES

- curl
- pkill
- ssh
- weechat-fifo
