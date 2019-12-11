sway-command-input-exec(1)

# NAME

sway-command-input-exec - Sway command user input execution

# SYNOPSIS

sway-command-input-exec [-F _format_] [-P _prompt_]

# DESCRIPTION

Run a sway command given some user input

# OPTIONS

*-F* _format_
	Sway command to be executed++
%s occurences are replaced by user input++
default: %s

*-P* _prompt_
	Display before user input

# DEPENDENCIES

- swaymsg
