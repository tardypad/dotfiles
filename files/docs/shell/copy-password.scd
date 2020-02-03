copy-password(1)

# NAME

copy-password - Interactive selection to copy a password

# SYNOPSIS

copy-password [_fzf_options_...]

# DESCRIPTION

Open interface to select and copy a password.

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
