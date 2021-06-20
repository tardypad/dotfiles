task(1perso)

# NAME

task - Manage the current task

# SYNOPSIS

task *create* _id_ [ _name_ ]

task [-n] *ids*

task [-l] *pick* _id_ [ _description_ ]

task [ *show* | *drop* ]

# DESCRIPTION

Manage the current task to focus on.

# OPTIONS

*-n*
	Show identifiers with their name

*-l*
	Track and log the time spent on the task

# OPERANDS

*create*
	Create a new task

*ids*
	List all existing task identifiers

*pick*
	Pick a task as the current one

*show*
	Display current task if any++
This is the default action if none is specified

*drop*
	Drop the current task

_id_
	Task identifier

_name_
	Task name

_description_
	Task description

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_DATA_HOME/tasks_
	Directory containing all the tasks

_$XDG_RUNTIME_DIR/task_
	Contains information about the current task

# DEPENDENCIES

- pkill
- time-tracker
