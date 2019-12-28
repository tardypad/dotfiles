sway-app-tmux-env(1)

# NAME

sway-app-tmux-env - Launch tmux env app

# SYNOPSIS

sway-app-tmux-env _env_ _session_

# DESCRIPTION

Open tmux env app in window in new workspace. It focus current window if it
already exists.

# OPTIONS

None

# OPERANDS

_env_
	Name of the environment

_session_
	Name of the session

# DEPENDENCIES

- alacritty
- sway-create-workspace
- sway-focus-window-title
- swaymsg
- tmux-env
