STARTUP(1perso)

# NAME

startup - Startup environment

# SYNOPSIS

startup

# DESCRIPTION

Set up initial workspaces and applications.

# OPTIONS

None

# OPERANDS

None

# ENVIRONMENT VARIABLES

_XDG_NOTES_DIR_
	Path to user-specific notes directory++
If unset, defaults to $HOME/Notes

# FILES

_$XDG_NOTES_DIR/todo.md_
	TODO file

# DEPENDENCIES

- {app/web_browser}
- foot
- mktemp
- schedule
- sway-quick-command
- swaymsg
- tmux
- tmux-env
