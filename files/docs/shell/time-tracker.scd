time-tracker(1)

# NAME

time-tracker - Track tasks duration

# SYNOPSIS

time-tracker *start* _id_ [ _description_ ]

time-tracker *add* _id_ _duration_ [ _description_ ]

time-tracker [ *ids* | *status* | *stop* ]

time-tracker *edit* [ _day_ ]

time-tracker [-gt] *show* [ _day_ ]

# DESCRIPTION

Manager tasks duration tracking

# OPTIONS

*-g*
	Display logs grouped by identifier with durations summed

*-t*
	Display logs with values separated by tab

# OPERANDS

*add*
	Manually log a task

*edit*
	Open editor to manually edit the logging of a day

*show*
	Display the logging a day

*ids*
	List all existing task identifiers

*start*
	Start session

*status*
	Display current task if session active++
This is the default action if none is specified

*stop*
	End session

_id_
	Task identifier

_description_
	Task description

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

_$XDG_DATA_HOME/time_tracker_
	Directory containing time tracker logs

_$XDG_RUNTIME_DIR/time_tracker_
	Contains information about the current task being tracked

# DEPENDENCIES

- column
