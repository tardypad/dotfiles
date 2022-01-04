I3BLOCKS-MODE(1perso)

# NAME

i3blocks-mode - Manage the bar status mode

# SYNOPSIS

i3blocks-mode [ _full_ | _light_ | _show_ | _toggle_ ]

# DESCRIPTION

Manage the bar status mode. Light mode is the default.

# OPTIONS

None

# OPERANDS

_full_
	Enable full mode

_light_
	Enable light mode

_show_
	Display current mode++
This is the default action if none is specified

_toggle_
	Toggle mode

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/i3blocks_mode_full_
	File used as a flag to store the status of the mode

# DEPENDENCIES

- pkill
- seq
