TIME-TRACKER(1perso)

# NAME

time-tracker - Track and log time spent on a task

# SYNOPSIS

time-tracker *start* _id_ [ _comment_ ]

time-tracker [ *show* | *stop* ]

time-tracker [-d _day_] *log* _id_ _duration_ [ _comment_ ]

time-tracker [-gt] [-d _day_] *overview*

time-tracker [-d _day_] *edit*

# DESCRIPTION

Track and log the time spent on a task

# OPTIONS

*-d* _day_
	Logging day to use for the action

*-g*
	Display logs grouped by identifier with durations summed

*-t*
	Display logs with values separated by tab

# OPERANDS

*start*
	Start tracking the time spent on a task

*show*
	Display current task being tracked if any++
This is the default action if none is specified

*stop*
	End current tracking

*log*
	Manually log a task with its duration

*overview*
	Display the full logging of a day

*edit*
	Open editor to manually edit the logging of a day

_id_
	Task identifier

_comment_
	Task comment

_duration_
	Task duration in minutes

_day_
	Logging day in YYYY-MM-DD format

# ENVIRONMENT VARIABLES

_EDITOR_
	Determine the application to be invoked to edit files++
If unset, defaults to vi

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_DATA_HOME/time-tracker/logs_
	Directory containing the time tracker logs

_$XDG_RUNTIME_DIR/time-tracker_
	Contains information about the current task being tracked

# DEPENDENCIES

- column
