rename-edit(1perso)

# NAME

rename-edit - Batch rename via editor

# SYNOPSIS

rename-edit

# DESCRIPTION

Open the editor to manually batch rename all the files and directories from the
current directory.

_WARNING_: Not tested with all kind of weird quoting, spacing, newline,...++
Use carefully, there is no check for example for:
- files overwriting (file_a and file_b both getting renamed to file)
- renaming order conflicts (file_1 and file_2 renamed respectively to file_2
  and file_3 would result in a single file_3 at the end)
- lines that get moved around by mistake

# OPTIONS

None

# OPERANDS

None

# ENVIRONMENT VARIABLES

_EDITOR_
	Determine the application to be invoked to edit files++
If unset, defaults to vi

# FILES

None

# DEPENDENCIES

- mktemp
