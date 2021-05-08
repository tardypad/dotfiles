extract-tokens(1perso)

# NAME

extract-tokens - Extract tokens from input

# SYNOPSIS

extract-tokens _type_ < text

# DESCRIPTION

Extract tokens from standard input text

# OPTIONS

None

# OPERANDS

_type_
	Type of token to extract++
valid types:
	- hash:  hexadecimal hash
	- line: full line
	- path: file path
	- url: URL
	- word: alphanumerical characters and few symbols allowed
	- WORD: any consecutive characters separated by spaces

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- grep with -o option #FIXME: This script is not POSIX compliant
