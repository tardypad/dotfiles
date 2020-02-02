sway-launch-command(1)

# NAME

sway-launch-command - Launcher to run a command

# SYNOPSIS

sway-launch-command [_fzf_options_...]

# DESCRIPTION

Open a launcher window to select and run a command

# OPTIONS

None

# OPERANDS

_fzf_option_
	*fzf* option

# ENVIRONMENT VARIABLES

_XDG_CACHE_HOME_
	Path to user-specific base directory to store cached data++
If unset, defaults to $HOME/.cache

# FILES

_$XDG_CACHE_HOME/commands_
	File used as cache for the list of commands

# DEPENDENCIES

- fzf
- stat
- swaymsg
