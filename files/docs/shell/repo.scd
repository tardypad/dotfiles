repo(1)

# NAME

repo - Manage personal remote repository packages

# SYNOPSIS

repo _repo_name_ _add_ _pkg_file_

repo _repo_name_ _remove_ _pkg_name_

repo _repo_name_ _sync_ _pkg_name_

# OPERANDS

_repo_name_
	Remote repository name

_add_
	Add the _pkg_file_ to the repo

_remove_
	Remove the _pkg_name_ from the repo

_sync_
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
