tmux-toggle-no-distraction(1)

# NAME

tmux-toggle-no-distraction - Toggle no distraction mode from tmux

# SYNOPSIS

tmux-toggle-no-distraction [ _window_ | _pane_ ]

# DESCRIPTION

Toggle no distraction mode from tmux:
- fullscreen sway window
- hide tmux status bar

# OPTIONS

None

# OPERANDS

_window_
	Focus the current window only++
This is the default target if none specified

_pane_
	Focus the current pane only

# DEPENDENCIES

- jq
- swaymsg
- tmux
