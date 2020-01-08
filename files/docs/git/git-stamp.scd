git-stamp(1)

# NAME

git-stamp - Amend last commit with a stamp message

# SYNOPSIS

git stamp [-r] _id_ [_message_]

# DESCRIPTION

Amend last commit's body with an extra line containing a stamp message.

# OPTIONS

*-r*
	replace all previous stamps with same id++
this is case insensitive

# OPERANDS

_id_
	Identifier of the stamp

_message_
	Message of the stamp

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- git
