do-not-disturb(1)

# NAME

do-not-disturb - Manage "Do not disturb" mode

# SYNOPSIS

do-not-disturb [ _status_ | _disable_ ]

do-not-disturb ( _enable_ | _toggle_ ) [ _status_text_ ]

# OPERANDS

_status_
	Display whether the "Do not disturb" mode is "enabled" or "disabled"++
This is the default action if none is specified

_disable_
	Disable "Do not disturb" mode++
The status text can't be modified, it is defined by the website itself++
It should display "Available" or something similar

_enable_
	Enable "Do not disturb" mode

_toggle_
	Toggle "Do not disturb" mode

_status_text_
	The status text to output when the "Do not disturb" mode is enabled++
The default text is "Do not disturb"
