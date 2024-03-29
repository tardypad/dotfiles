LOOP(1perso)

# NAME

loop - Execute a command in a loop

# SYNOPSIS

loop [-c _count_] [-i _interval_] [-t _time_] _command_

# DESCRIPTION

Execute a command in a loop.

The $i variable used as a counter of the executions can be used in the command.

# OPTIONS

*-c* _count_
	stops after _count_ runs of the command

*-i* _interval_
	wait _interval_ seconds between each command run

*-t* _time_
	stops command runs after a _time_ seconds period

# OPERANDS

_command_
	Command to execute

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

None
