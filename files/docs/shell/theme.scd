THEME(1perso)

# NAME

theme - Manage system theme

# SYNOPSIS

theme *set* _theme_

theme [-s] [ *status* | *toggle* ]

# DESCRIPTION

Manage the overall theme of the system

# OPTIONS

*-s*
	only send OSC sequences for the current theme to output

# OPERANDS

*set*
	Set system theme

*status*
	Display current theme name++
This is the default action if none is specified

*toggle*
	Toggle between dark and light theme

_theme_
	Name of the theme++
valid themes:
	- dark
	- light

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

# FILES

_$XDG_DATA_HOME/theme_
	File defining the current theme

_$XDG_DATA_HOME/theme_files_
	File containing the list of theme specific files

# DEPENDENCIES

- makoctl
- pgrep
- pkill
- qutebrowser
- swaymsg
- tmux
