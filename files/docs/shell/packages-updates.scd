packages-updates(1)

# NAME

packages-updates - Manage packages updates

# SYNOPSIS

packages-updates ( _list_ | _update_ )

# DESCRIPTION

Manage packages updates

# OPTIONS

None

# OPERANDS

_list_
	List packages that can be updated

_update_
	Update all the packages

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/packages-updates_
	Temporary directory for packages storage and operations

# DEPENDENCIES

- column
- fakeroot
- pacman
- pacman-conf
- sudo
