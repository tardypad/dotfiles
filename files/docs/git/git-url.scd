GIT-URL(1perso)

# NAME

git-url - Display an URL related to the repository or a commit

# SYNOPSIS

git url [-c _commit_] [-r _remote_] [-t _type_] [_file_]

# DESCRIPTION

Print an URL related to the repository or a specific object. It is based on:
- the remote config using an URL alias
- a specific "browse" config block using that alias

# OPTIONS

*-c* _commit_
	commit to select information++
default: HEAD

*-r* _remote_
	remote to use++
default: origin

*-t* _type_
	URL type++
default: repo++
valid types:
	- repo: general URL of the repository
	- commit: URL of the selected commit
	- issue: URL of the issue related to selected commit
	- review: URL of the review related to selected commit
	- file: URL of the file passed as argument

# OPERANDS

_file_
	File to display the URL of

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- git (includes own commands: commit-issue-id, commit-review-id)
