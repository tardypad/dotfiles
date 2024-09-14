LAUNCH-TMUX-ENV(1perso)

# NAME

launch-tmux-env - Interactive selection to start a session of a tmux env

# SYNOPSIS

launch-tmux-env _env_

# DESCRIPTION

Open interface to select and start a session of a tmux env in window in a new
workspace. It focus current env window if it already exists.

# OPTIONS

*-n*
	Add a "New" option in the list to create a new session

# OPERANDS

_env_
	Name of the environment

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

# FILES

_$XDG_DATA_HOME/env/tmux/\*.sh_
	Files defining the tmux environment

# DEPENDENCIES

- foot
- sway-create-workspace
- swaymsg
- tmux-env
- tofi
