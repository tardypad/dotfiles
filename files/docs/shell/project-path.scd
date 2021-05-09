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

_project_
	Project to use++
If none specified, the general path for _type_ is displayed

# ENVIRONMENT VARIABLES

_XDG_PROJECTS_DIR_
	Path to base directory of projects repositories++
If unset, defaults to $HOME/Projects

# FILES

_$XDG_PROJECTS_DIR_
	Base directory for projects

# DEPENDENCIES

None
