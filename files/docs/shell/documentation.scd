DOCUMENTATION(1perso)

# NAME

documentation - Get documentation about a topic

# SYNOPSIS

documentation _topic_ [_section_]

# DESCRIPTION

Display documentation about a topic

# OPTIONS

None

# OPERANDS

_topic_
	Topic to get documentation about

_section_
	Select which *man*(1) section of the _topic_ to display

# ENVIRONMENT VARIABLES

_MAN_PATH_
	Path to base directory containing man pages++
If unset, defaults to /usr/share/man

# FILES

_$MAN_PATH_
	Man pages directory

_/usr/share/zsh/{ version }/help_
	Directory containing zsh utilities help files

# DEPENDENCIES

- zsh
