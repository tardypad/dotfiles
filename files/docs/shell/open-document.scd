OPEN-DOCUMENT(1perso)

# NAME

open-document - Interactive selection to open document

# SYNOPSIS

open-document

# DESCRIPTION

Open interface to select a document and open it.

The document are searched within the home folder.
Hidden root folders are excluded from the search.

The full home search is not rerun again if the cached file is present.
Only the search within the XDG_DESKTOP_DIR and XDG_DOWNLOAD_DIR directories is done for every run.

A document is defined as having any of the following extensions (case insensitive):
- docx
- pdf
- pptx
- xslx

# OPTIONS

*-c*
	only build the cache for the list of documents

# OPERANDS

None

# ENVIRONMENT VARIABLES

_XDG_CACHE_HOME_
	Path to user-specific base directory to store cached data++
If unset, defaults to $HOME/.cache

_XDG_DESKTOP_DIR_
	Path to user-specific desktop directory++
If unset, defaults to $HOME/Desktop

_XDG_DOWNLOAD_DIR_
	Path to user-specific downloads directory++
If unset, defaults to $HOME/Downloads

# FILES

_$XDG_CACHE_HOME/documents_
	File used as cache for the list of documents

# DEPENDENCIES

- fuzzel
- xdg-open
