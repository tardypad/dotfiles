COMBINED-AUDIO(1perso)

# NAME

combined-audio - Manage a Pipewire combined audio sink

# SYNOPSIS

combined-audio [ *create* | *delete* | *status* ]

# DESCRIPTION

Combine the default sink and default source into a single sink.++
Useful for recording all audio during meetings, presentations, etc.

# OPTIONS

None

# OPERANDS

*create*
	Create the combined audio sink

*delete*
	Delete the combined audio sink

*status*
	Display the combined audio sink name if created++
This is the default action if none is specified

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- pactl
- pw-link
