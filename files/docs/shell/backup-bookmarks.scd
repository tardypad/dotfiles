backup-bookmarks(1)

# NAME

backup-bookmarks - Backup browser bookmarks to remote server

# SYNOPSIS

backup-bookmarks

# DESCRIPTION

Backup browser bookmarks to remote server

# OPTIONS

None

# OPERANDS

None

# ENVIRONMENT VARIABLES

_XDG_CONFIG_HOME_
	Path to user-specific base directory to store configuration files++
If unset, defaults to $HOME/.config

# FILES

_$XDG_CONFIG_HOME/qutebrowser/bookmarks/urls_
	File containing browser bookmarks

_$XDG_CONFIG_HOME/qutebrowser/quickmarks_
	File containing browser quickmarks

# DEPENDENCIES

- rsync
