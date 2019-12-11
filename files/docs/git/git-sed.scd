git-sed(1)

# NAME

git-sed - Apply a sed script over all text files

# SYNOPSIS

git sed _script_

# DESCRIPTION

Run a single sed script over all text files in the repository.

_WARNING_: Untracked files are not included in the list of files

# OPERANDS

_script_
	string to be used as the *sed*(1) script to apply

# DEPENDENCIES

- git
