TMUX-SELECT-PANE-VIM(1perso)

# NAME

tmux-select-pane-vim - Change pane within tmux or windows within vim

# SYNOPSIS

tmux-select-pane-vim _key_

# DESCRIPTION

If the current tmux pane is running vim, send the vim keybindings to try to
select the window in vim in the desired direction. If not, select the tmux pane
in the same direction.

# OPTIONS

None

# OPERANDS

_key_
	Directional key pressed

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- tmux
