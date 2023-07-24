BACKUP(1perso)

# NAME

backup - backup utility

# SYNOPSIS

backup [-cr] _source_ _target_ [_item_]

# DESCRIPTION

Backup or restore some items

# OPTIONS

*-c*
	Only check the differences via checksum (dry-run)

*-r*
	Restore a backup

# OPERANDS

_source_
	Source of the backup or restore++
valid sources:
	- hdd1
	- hdd2
	- laptop
	- phone
	- server

_target_
	Target of the backup or restore++
valid targets:
	- hdd1
	- hdd2
	- laptop
	- server

_item_
	Item to backup or restore++
If no item is provided, all the valid ones for the source and target are done++
valid items:
	- bookmarks
	- books
	- contacts
	- messages
	- mail
	- notes
	- packages
	- pictures
	- projects
	- repositories
	- time_tracker_logs
	- todo
	- videos

# SOURCES

Valid sources per action

[[
:- backup 
:- restore
|  hdd1
:-
:- \* 
|  hdd2
:- 
:- \*
|  laptop 
:- \*
:- 
|  phone
:- \*
:- 
|  server 
:- \*
:- 

# TARGETS

Valid targets per action

[[
:- backup
:- restore
|  hdd1
:- \*
:- 
|  hdd2
:- \*
:- 
|  laptop
:- 
:- \*
|  server
:- \*
:- \*

# SOURCE TARGET ITEMS

Valid items per source and target

[[
:- laptop -> hdd
:- hdd -> laptop
:- laptop -> server
:- phone -> hdd
:- server <-> hdd
|  bookmarks
:- \*
:- \*
:- \*
: 
:- \*
|  books
:- \*
:- \*
: 
: 
: 
|  contacts
: 
: 
: 
: 
:- \*
|  messages
: 
: 
: 
:- \*
: 
|  mail
:- \*
: 
: 
: 
: 
|  notes
:- \*
:- \*
:- \*
: 
:- \*
|  packages
: 
: 
: 
: 
:- \*
|  pictures
: 
: 
: 
:- \*
: 
|  projects
:- \*
:- \*
: 
: 
: 
|  repositories
: 
: 
: 
: 
:- \*
|  time_tracker_logs
: 
: 
:- \*
: 
: 
|  todo
:- \*
:- \*
:- \*
: 
:- \*
|  videos
:- \*
: 
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

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

_XDG_MAIL_DIR_
	Path to user-specific mail directory++
If unset, defaults to $HOME/Mail

_XDG_NOTES_DIR_
	Path to user-specific notes directory++
If unset, defaults to $HOME/Notes

_XDG_PROJECTS_DIR_
	Path to user-specific projects directory++
If unset, defaults to $HOME/Projects

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

_$XDG_DATA_HOME/time-tracker/logs_
	Directory containing time tracker logs

_$XDG_MAIL_DIR/Perso_
	Directory containing the personal  mail

_$XDG_NOTES_DIR_
	Directory containing the notes

_$XDG_PROJECTS_DIR_
	Directory containing the projects

_$XDG_VIDEOS_DIR_
	Directory containing the videos

# DEPENDENCIES

- lsblk
- rsync
