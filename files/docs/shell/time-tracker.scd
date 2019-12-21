time-tracker(1)

# NAME

time-tracker - Track tasks duration

# SYNOPSIS

time-tracker *start* _id_ [ _description_ ]

time-tracker *add* _id_ _duration_ [ _description_ ]

time-tracker [ *ids* | *status* | *stop* ]

time-tracker [ *show* | *edit* ] [ _day_ ]

# DESCRIPTION

Manager tasks duration tracking

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

# DEPENDENCIES

- column
