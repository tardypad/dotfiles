task(1perso)

# NAME

task - Manage the current task

# SYNOPSIS

task *start* _id_ [ _description_ ]

task *log* _id_ _duration_ [ _description_ ]

task [ *ids* | *show* | *stop* ]

task *review* [ _day_ ]

task [-gt] *overview* [ _day_ ]

# DESCRIPTION

Track and log the current task with its duration

# OPTIONS

*-g*
	Display logs grouped by identifier with durations summed

*-t*
	Display logs with values separated by tab

# OPERANDS

*log*
	Manually log a task

*review*
	Open editor to manually edit the logging of a day

*overview*
	Display the logging of a day

*ids*
	List all existing task identifiers

*start*
	Start a task

*show*
	Display current task if any++
This is the default action if none is specified

*stop*
	End current task

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

_$XDG_DATA_HOME/task_
	Directory containing task logs

_$XDG_RUNTIME_DIR/task_
	Contains information about the current task being tracked

# DEPENDENCIES

- column
- pkill
