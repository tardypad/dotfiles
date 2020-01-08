git-sed(1)

# NAME

git-sed - Apply a sed script over text files

# SYNOPSIS

git sed _script_ [_path_...]

# DESCRIPTION

Run a single sed script over text files in the repository.

_WARNING_: Untracked files are not included in the list of files

# OPTIONS

None

# OPERANDS

_script_
	string to be used as the *sed*(1) script to apply

_path_
	restrict the execution to some files or directories

# ENVIRONMENT VARIABLES

None

# FILES

_/tmp/git-sed_
	Temporary file to store sed results

# DEPENDENCIES

- git
