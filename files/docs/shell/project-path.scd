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

_PROJECTS_REPO_DIR_
	Path to base directory of projects repositories++
If unset, defaults to $HOME/Projects/repos

# FILES

_$PROJECTS_REPO_DIR_
	Base directory for projects repositories

# DEPENDENCIES

None
