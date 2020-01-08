git-reauthor(1)

# NAME

git-reauthor - Rewrite history to change authors identities

# SYNOPSIS

git reauthor -a [-c] [-e _email_] [-n _name_] [-t _type_]

git reauthor -o _email_ [-c] [-e _email_] [-n _name_] [-t _type_]

# DESCRIPTION

Rewrite history to change committer and author name and email.

# OPTIONS

*-a*
	rewrite all identities

*-c*
	correct values from user Git config

*-e* _email_
	define the correct email to set++
takes precedence over values coming from -c

*-n* _name_
	define the correct name to set++
takes precedence over values coming from -c

*-o* _email_
	rewrite identities matching old email

*-t* _id_
	define the type of identities affected by the rewrite++
valid ids: author, committer, both (default)

# OPERANDS

None

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- git
