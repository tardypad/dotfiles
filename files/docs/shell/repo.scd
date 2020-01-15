repo(1)

# NAME

repo - Manage personal remote repository packages

# SYNOPSIS

repo _repo_name_ *add* _pkg_file_

repo _repo_name_ *remove* _pkg_name_

repo _repo_name_ *sync* _pkg_name_

# DESCRIPTION

Manage personal remote repository packages

# OPTIONS

None

# OPERANDS

_repo_name_
	Remote repository name

*add*
	Add the _pkg_file_ to the repo

*remove*
	Remove the _pkg_name_ from the repo

*sync*
	Download, build and add the _pkg_name_ to the repo

_pkg_file_
	Package file

_pkg_name_
	Package name

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/repo_
	Temporary directory for packages storage and operations

# DEPENDENCIES

- aur
- repo-add
- repo-remove
- scp
