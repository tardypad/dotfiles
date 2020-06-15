notify-end-pomodoro(1perso)

# NAME

notify-end-pomodoro - Notify the end of a pomodoro session

# SYNOPSIS

notify-end-pomodoro

# DESCRIPTION

Send a notification for the end of a pomodoro session

# OPTIONS

None

# OPERANDS

None

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

# FILES

_$XDG_DATA_HOME/sounds/end_pomodoro.wav_
	Notification sound to play

# DEPENDENCIES

- aplay
- notify
