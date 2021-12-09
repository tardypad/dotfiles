clock(1perso)

# NAME

clock - Display a location's clock

# SYNOPSIS

clock [_location_]

# DESCRIPTION

Display the date and time of a location.

If no _location_ operand is given, all known clocks are displayed

# OPTIONS

None

# OPERANDS

_location_
	Location identifier

# ENVIRONMENT VARIABLES

_XDG_CONFIG_HOME_
	Path to user-specific base directory to store configuration files++
If unset, defaults to $HOME/.config

# FILES

_$XDG_CONFIG_HOME/misc/locations_timezone.tsv_
	File containing the locations and their timezone

# DEPENDENCIES

- column
