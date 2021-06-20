backup(1perso)

# NAME

backup - backup utility

# SYNOPSIS

backup _target_ _item_

# DESCRIPTION

Backup some items on a target

# OPTIONS

None

# OPERANDS

_target_
	Target of the backup++
valid targets:
	- hdd
	- server

_item_
	Item to backup++
valid items:
	- bookmarks
	- books
	- contacts
	- notes
	- time_tracker_logs
	- videos

# TARGET ITEMS

Valid items per target

[[
:- hdd
:- server
|  bookmarks
:- \*
:- \*
|  books
:- \*
: 
|  contacts
:- \*
:- \*
|  notes
:- \*
:- \*
|  time_tracker_logs
: 
:- \*
|  videos
:- \*

# ENVIRONMENT VARIABLES

_XDG_BOOKS_DIR_
	Path to user-specific books directory++
If unset, defaults to $HOME/Books

_XDG_CONFIG_HOME_
	Path to user-specific base directory to store configuration files++
If unset, defaults to $HOME/.config

_XDG_CONTACTS_DIR_
	Path to user-specific contacts directory++
If unset, defaults to $HOME/Contacts

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

_XDG_NOTES_DIR_
	Path to user-specific notes directory++
If unset, defaults to $HOME/Notes

_XDG_VIDEOS_DIR_
	Path to user-specific videos directory++
If unset, defaults to $HOME/Videos

# FILES

_$XDG_BOOKS_DIR_
	Directory containing the books

_$XDG_CONFIG_HOME/qutebrowser/bookmarks/urls_
	File containing browser bookmarks

_$XDG_CONFIG_HOME/qutebrowser/quickmarks_
	File containing browser quickmarks

_$XDG_CONTACTS_DIR_
	Directory containing the contacts

_$XDG_DATA_HOME/time-tracker/logs_
	Directory containing time tracker logs

_$XDG_NOTES_DIR_
	Directory containing the notes

_$XDG_VIDEOS_DIR_
	Directory containing the videos

# DEPENDENCIES

- rsync
