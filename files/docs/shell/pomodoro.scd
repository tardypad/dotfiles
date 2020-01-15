pomodoro(1)

# NAME

pomodoro - Manage a Pomodoro session

# SYNOPSIS

pomodoro [ *cancel* | *status* ]

pomodoro [ *start* | *toggle* ] [_duration_]

# DESCRIPTION

Manage a Pomodoro session

# OPTIONS

None

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

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/pomodoro_
	Contains information about the current session

# DEPENDENCIES

- notify-end-pomodoro
- pkill
