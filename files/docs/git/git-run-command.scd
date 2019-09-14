git-run-command(1)

# NAME

git-run-command - Execute a command over a range of git revisions

# SYNOPSIS

git run-command [-q] _rev_range_ _command_

# OPTIONS

*-q*
	only show command outputs

# OPERANDS

_rev_range_
	revisions range, see *gitrevisions*(7)

_command_
	command to execute on each revision of the range

# DEPENDENCIES

- git
