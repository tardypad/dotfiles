open-document(1perso)

# NAME

open-document - Interactive selection to open document

# SYNOPSIS

open-document

# DESCRIPTION

Open interface to select a document and open it.

The document are searched within the home folder.
Hidden root folders are excluded from the search.

A document is defined as having a "pdf" extension.

# OPTIONS

*-c*
	only build the cache for the list of documents

# OPERANDS

None

# ENVIRONMENT VARIABLES

_XDG_CACHE_HOME_
	Path to user-specific base directory to store cached data++
If unset, defaults to $HOME/.cache

# FILES

_$XDG_CACHE_HOME/documents_
	File used as cache for the list of documents

# DEPENDENCIES

- bemenu
- xdg-open
