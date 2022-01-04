SWAY-COMMAND-INPUT(1perso)

# NAME

sway-command-input - Open bar for user input to run sway command

# SYNOPSIS

sway-command-input [-F _format_] [-P _prompt_]

# DESCRIPTION

Open a bar for user input to run sway command.

# OPTIONS

*-F* _format_
	Sway command to be executed++
%s occurrences are replaced by user input++
default: %s

*-P* _prompt_
	Display before user input++
default: :

# OPERANDS

None

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- bemenu
- swaymsg
