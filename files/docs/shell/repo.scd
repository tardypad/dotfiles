repo(1)

# NAME

repo - Manage personal remote repository packages

# SYNOPSIS

repo _repo_name_ *add* _pkg_file_

repo _repo_name_ *remove* _pkg_name_

repo _repo_name_ *sync* _pkg_name_

# DESCRIPTION

Manage personal remote repository packages

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

# DEPENDENCIES

- aur
- repo-add
- repo-remove
- scp
