POMODORO(1perso)

# NAME

pomodoro - Manage a Pomodoro session

# SYNOPSIS

pomodoro [ *cancel* | *status* ]

pomodoro [ *start* | *toggle* ] [_duration_]

# DESCRIPTION

Manage a Pomodoro session.

A notification with a sound is triggered at the end of a session.

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

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_DATA_HOME/sounds/end_pomodoro.ogg_
	Notification sound to play

_$XDG_RUNTIME_DIR/pomodoro_
	Contains information about the current session

# DEPENDENCIES

- notify
- pkill
