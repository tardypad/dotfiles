do-not-disturb(1)

# NAME

do-not-disturb - Manage "Do not disturb" mode

# SYNOPSIS

do-not-disturb [ *status* | *disable* ]

do-not-disturb [-d _duration_] [-w _work_] ( *enable* | *toggle* )

# DESCRIPTION

Manage "Do not disturb" mode. It updates mode on various places:
- locally on system
- in Slack chat
- on remote server

# OPTIONS

*-d* _duration_
	Enable "Do not disturb" mode during _duration_ minutes

*-w* _work_
	Work information about the cause of the "Do not disturb" mode being enabled

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

# DEPENDENCIES

- ssh
- weechat-fifo
