tmux-toggle-no-distraction(1)

# NAME

tmux-toggle-no-distraction - Toggle no distraction mode from tmux

# SYNOPSIS

tmux-toggle-no-distraction [ _soft_ | _hard_ ]

# DESCRIPTION

Toggle no distraction mode from tmux:
- fullscreen sway window
- hide tmux status bar

# OPTIONS

None

# OPERANDS

_soft_
	Soft mode

_hard_
	Hard mode++
Same as soft mode with current tmux pane zoomed

# DEPENDENCIES

- jq
- swaymsg
- tmux
