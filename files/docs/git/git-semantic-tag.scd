git-semantic-tag(1perso)

# NAME

git-semantic-tag - Create a tag using semantic versioning

# SYNOPSIS

git semantic-tag [-123] [-- _option_...]

# DESCRIPTION

Create a new tag following the last one using semantic versioning increment

# OPTIONS

*-1*
	Major version increment

*-2*
	Minor version increment

*-3*
	Patch version increment

# OPERANDS

_option_
	*git-tag* option

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- git
- mktemp

# ACKNOWLEDGEMENTS

Heavily inspired by Drew DeVault's dotfiles script
https://git.sr.ht/~sircmpwn/dotfiles/tree/master/bin/semver
https://drewdevault.com/2019/10/12/how-to-fuck-up-releases.html
