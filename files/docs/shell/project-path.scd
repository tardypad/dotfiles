project-path(1perso)

# NAME

project-path - Display a path related to a project

# SYNOPSIS

project-path _type_ [_project_]

# DESCRIPTION

Print a path related to a project

# OPTIONS

None

# OPERANDS

_type_
	Type of path++
valid types:
	- main: main directory
	- repo: repository directory
	- docs: documentation directory
	- logs: logging directory

_project_
	Project to use++
If none specified, the general path for _type_ is displayed

# ENVIRONMENT VARIABLES

_PROJECTS_DOC_DIR_
	Path to base directory of projects documentation++
If unset, defaults to $HOME/Projects/docs

_PROJECTS_LOG_DIR_
	Path to base directory of projects log files++
If unset, defaults to $HOME/Projects/logs

_PROJECTS_REPO_DIR_
	Path to base directory of projects repositories++
If unset, defaults to $HOME/Projects/repos

# FILES

_$PROJECTS_DOC_DIR_
	Base directory for projects documentation

_$PROJECTS_LOG_DIR_
	Base directory for projects log files

_$PROJECTS_REPO_DIR_
	Base directory for projects repositories

# DEPENDENCIES

None
