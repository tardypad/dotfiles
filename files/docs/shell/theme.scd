THEME(1perso)

# NAME

theme - Change system theme

# SYNOPSIS

theme _theme_

# DESCRIPTION

Change the overall theme of the system

# OPTIONS

None

# OPERANDS

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

# DEPENDENCIES

- makoctl
- pgrep
- pkill
- project-path
- qutebrowser
- swaymsg
- tmux
