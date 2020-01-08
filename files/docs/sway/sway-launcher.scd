sway-launcher(1)

# NAME

sway-launcher - Helper for opening launchers

# SYNOPSIS

sway-launcher _command_

# DESCRIPTION

Open a launcher window. It focus current one if any already exists.

# OPTIONS

None

# OPERANDS

_command_
	Command for the launcher instance

# ENVIRONMENT VARIABLES

XDG_CONFIG_HOME
	Path to user-specific base directory to store configuration files++
If unset, defaults to $HOME/.config

# FILES

$XDG_CONFIG_HOME/alacritty/alacritty_launcher.yml
	Specific alacritty config file

# DEPENDENCIES

- alacritty
- sway-focus-window-title
- swaymsg
