extract-tokens(1)

# NAME

extract-tokens - Extract tokens from input

# SYNOPSIS

extract-tokens _type_

# DESCRIPTION

Extract tokens from standard input text

# OPTIONS

None

# OPERANDS

_type_
	Type of token to extract++
valid types:
	- hashes:  hexadecimal hashes
	- lines: full lines
	- paths: file paths
	- urls: URLs
	- words: alphanumerical characters and few symbols allowed
	- WORDS: any consecutive characters separated by spaces

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- grep with -o option #FIXME: This script is not POSIX compliant
