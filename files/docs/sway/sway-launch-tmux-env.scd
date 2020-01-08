sway-launch-tmux-env(1)

# NAME

sway-launch-tmux-env - Launcher to start a session of a tmux env

# SYNOPSIS

sway-launch-tmux-env _env_

# DESCRIPTION

Open a launcher window to select and start a session of a tmux env

# OPTIONS

None

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

- sway-app-tmux-env
- sway-fzf-launcher
