git-stamp(1)

# NAME

git-stamp - Amend last commit with a stamp message prefixed by an identifier

# SYNOPSIS

git stamp [-r] _id_ [_message_...]

# OPTIONS

*-r*
	replace all previous stamps with same id++
this is case insensitive

# OPERANDS

_id_
	Identifier of the stamp

_message_
	Message of the stamp++
Multiple messages shall be concatenated with a space delimiter
