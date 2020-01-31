sway-launch-password(1)

# NAME

sway-launch-password - Launcher to copy a password

# SYNOPSIS

sway-launch-password [_fzf_options_...]

# DESCRIPTION

Open a launcher window to select and copy a password.

# OPTIONS

None

# OPERANDS

_fzf_option_
	*fzf* option

# ENVIRONMENT VARIABLES

_PASSWORD_STORE_DIR_
	Path to the password storage directory++
If unset, defaults to $HOME/.password-store

# FILES

_$PASSWORD_STORE_DIR_
	Password storage directory

# DEPENDENCIES

- fzf
- pass
