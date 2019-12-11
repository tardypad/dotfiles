git-stamp(1)

# NAME

git-stamp - Amend last commit with a stamp message

# SYNOPSIS

git stamp [-r] _id_ [_message_]

# DESCRIPTION

Amend last commit's body with an extra line containing a stamp message.

_WARNING_: this command should be run with no files staged, otherwise those
changes will also be amended and be part of the last commit.

# OPTIONS

*-r*
	replace all previous stamps with same id++
this is case insensitive

# OPERANDS

_id_
	Identifier of the stamp

_message_
	Message of the stamp

# DEPENDENCIES

- git
