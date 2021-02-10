presentation(1perso)

# NAME

presentation - Manage "presentation" mode

# SYNOPSIS

presentation [ *status* | *enable* | *disable* | *toggle* ]

# DESCRIPTION

Manage "presentation" mode.

# OPTIONS

None

# OPERANDS

*status*
	Display whether the "presentation" mode is "enabled" or "disabled"++
This is the default action if none is specified

*disable*
	Disable "presentation" mode

*enable*
	Enable "presentation" mode

*toggle*
	Toggle "presentation" mode

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/presentation_
	File used as a flag to store the status of the mode

# DEPENDENCIES

- pkill
