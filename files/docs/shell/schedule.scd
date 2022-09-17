SCHEDULE(1perso)

# NAME

schedule - Print schedule

# SYNOPSIS

schedule [-d|-m|-w] [_date_]

# DESCRIPTION

Display the schedule of a period

# OPTIONS

*-d*
	Display a day (default)

*-m*
	Display a month

*-w*
	Display a week

# OPERANDS

_date_
	Date to define the period to display++
examples:
	- today
	- +1 (implies "+1 day/week/month" depending on options)
	- jan / feb / ... /dec

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- column
- date with -d option #FIXME: This script is not POSIX compliant
- rem
