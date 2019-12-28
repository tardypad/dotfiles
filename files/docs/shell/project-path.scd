project-path(1)

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

# DEPENDENCIES

- xdg-user-dir
