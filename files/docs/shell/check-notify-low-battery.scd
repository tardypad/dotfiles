check-notify-low-battery(1)

# NAME

check-notify-low-battery - Check and notify for low battery level

# SYNOPSIS

check-notify-low-battery

# DESCRIPTION

Check the battery level and send system notification if too low

# OPTIONS

None

# OPERANDS

None

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

# FILES

_$XDG_DATA_HOME/sounds/low_battery.wav_
	Notification sound to play

# DEPENDENCIES

- aplay
- battery-status
- notify
