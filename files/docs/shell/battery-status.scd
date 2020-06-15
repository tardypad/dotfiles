battery-status(1perso)

# NAME

battery-status - Report status of battery

# SYNOPSIS

battery-status

# DESCRIPTION

Print general status info about the battery

# OPTIONS

None

# OPERANDS

None

# ENVIRONMENT VARIABLES

None

# FILES

_/sys/class/power_supply/AC/online_
	File storing the adapter status

_/sys/class/power_supply/BAT\*/energy_now_
	Files storing the current battery level

_/sys/class/power_supply/BAT\*/energy_full_
	Files storing the full battery level

# DEPENDENCIES

None
