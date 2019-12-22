pomodoro(1)

# NAME

pomodoro - Manage a Pomodoro session

# SYNOPSIS

pomodoro [ *cancel* | *status* ]

pomodoro [ *start* | *toggle* ] [_duration_]


# DESCRIPTION

Manage a Pomodoro session

# OPERANDS

*cancel*
	Cancel session

*start*
	Start session

*status*
	Display time remaining if session active++
This is the default action if none is specified

*toggle*
	Start session if not active, cancel it otherwise

_duration_
	Duration in minutes++
Default is 25 min

# DEPENDENCIES

- notify-end-pomodoro
