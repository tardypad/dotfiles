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
	- task_logs

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
|  task_logs
: 
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

# FILES

_$XDG_BOOKS_DIR_
	Directory containing the books

_$XDG_CONFIG_HOME/qutebrowser/bookmarks/urls_
	File containing browser bookmarks

_$XDG_CONFIG_HOME/qutebrowser/quickmarks_
	File containing browser quickmarks

_$XDG_CONTACTS_DIR_
	Directory containing the contacts

_$XDG_DATA_HOME/tasks_
	Directory containing task logs

_$XDG_NOTES_DIR_
	Directory containing the notes

# DEPENDENCIES

- rsync
