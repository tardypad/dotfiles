git-run-command(1)

# NAME

git-run-command - Execute a command over a range of revisions

# SYNOPSIS

git run-command [-q] _rev_range_ _command_

# DESCRIPTION

Iterate through a range of revisions and run a command on each revision. It
initially checks that no change would be lost before starting the loop. At the
end of it, it restores the repository to its initial revision.

# OPTIONS

*-q*
	only show command outputs++
By default the revision being checked out is printed before execution

# OPERANDS

_rev_range_
	revisions range, see *gitrevisions*(7)

_command_
	command to execute on each revision of the range

# DEPENDENCIES

- git
