sway-command-input(1)

# NAME

sway-command-input - Open window for user input for running sway command

# SYNOPSIS

sway-command-input _args_

# DESCRIPTION

Open a window for user input to run sway command. It focus current window if it
already exists.

# OPTIONS

None

# OPERANDS

_args_
	*sway-command-input-exec*(1) arguments

# ENVIRONMENT VARIABLES

_XDG_CONFIG_HOME_
	Path to user-specific base directory to store configuration files++
If unset, defaults to $HOME/.config

# FILES

_$XDG_CONFIG_HOME/alacritty/alacritty_command_input.yml_
	Specific alacritty config file

# DEPENDENCIES

- alacritty
- sway-command-input-exec
- sway-focus-window-title
- swaymsg
