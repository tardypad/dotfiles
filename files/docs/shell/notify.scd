notify(1)

# NAME

notify - Send a notification

# SYNOPSIS

notify [-c _category_] [-i _id_] [-t _time_] _summary_ [_body_]

# DESCRIPTION

Send a system notification

# OPTIONS

*-c* _category_
	Notification category

*-i* _id_
	Notification identifier++
replace similar notification if any

*-t* _time_
	timeout in seconds

# OPERANDS

_summary_
	Notification summary

_body_
	Notification body

# DEPENDENCIES

- gdbus
