BACKUP(1perso)

# NAME

backup - backup utility

# SYNOPSIS

backup [-c] _source_ _target_ [_item_]

# DESCRIPTION

Backup some items on a target

# OPTIONS

*-c*
	Only check the differences via checksum (dry-run)

# OPERANDS

_source_
	Source of the backup++
valid sources:
	- laptop
	- phone
	- server

_target_
	Target of the backup++
valid targets:
	- hdd1
	- hdd2
	- server

_item_
	Item to backup++
If no item is provided, all the valid ones for the source and target are done++
valid items:
	- bookmarks
	- books
	- contacts
	- messages
	- notes
	- packages
	- pictures
	- repositories
	- time_tracker_logs
	- todo
	- videos

# SOURCE TARGET ITEMS

Valid items per source and target

[[
:- laptop -> hdd
:- laptop -> server
:- phone -> hdd
:- server -> hdd
|  bookmarks
:- \*
:- \*
: 
:- \*
|  books
:- \*
: 
: 
: 
|  contacts
:- \*
: 
: 
: 
|  messages
: 
: 
:- \*
: 
|  notes
:- \*
:- \*
: 
:- \*
|  packages
: 
: 
: 
:- \*
|  pictures
: 
: 
:- \*
: 
|  repositories
: 
: 
: 
:- \*
|  time_tracker_logs
: 
:- \*
: 
: 
|  todo
:- \*
:- \*
: 
:- \*
|  videos
:- \*
: 
:- \*
: 

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

- lsblk
- rsync
