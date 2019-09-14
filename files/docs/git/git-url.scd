git-url(1)

# NAME

git-url - Display an URL related to the repo or a commit++
          Based on remote config using an URL alias and "browse" config

# SYNOPSIS

git url [-c _commit_] [-r _remote_] [-t _type_]

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
	- repo: general URL of the repo
	- commit: URL of the selected commit
	- issue: URL of the issue related to selected commit
	- review: URL of the review related to selected commit

# DEPENDENCIES

- git (includes own commands: commit-issue-id, commit-review-id)
