sway-launch-password(1)

# NAME

sway-launch-password - Launcher to copy a password

# SYNOPSIS

sway-launch-password

# DESCRIPTION

Open a launcher window to select and copy a password.

# OPTIONS

None

# OPERANDS

None

# ENVIRONMENT VARIABLES

_PASSWORD_STORE_DIR_
	Path to the password storage directory++
If unset, defaults to $HOME/.password-store

# FILES

_$PASSWORD_STORE_DIR_
	Password storage directory

# DEPENDENCIES

- pass
- sway-fzf-launcher
