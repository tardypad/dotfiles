SCREENCAST(1perso)

# NAME

screencast - Take a screencast of a region

# SYNOPSIS

screencast [-q] *start* [ _audio_device_ ]

screencast [ *status* | *stop* | *toggle* ]

# DESCRIPTION

Open screen overlay to select a region to screencast. The video is saved in the
Desktop folder.

# OPTIONS

*-q*
	Quiet mode (does not report status as recording)

# OPERANDS

*status*
	Display whether the screencast is "recording" or "not recording"++
This is the default action if none is specified

*start* [ _audio_device_ ]
	Start screencast++
If the audio device argument is set, also record the audio from it.

*stop*
	Stop screencast

*toggle*
	Toggle screencast

# ENVIRONMENT VARIABLES

_XDG_DESKTOP_DIR_
	Path to user-specific desktop directory++
If unset, defaults to $HOME/Desktop

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_DESKTOP_DIR_
	Target directory to contain the videos

_$XDG_RUNTIME_DIR/screencast_
	Contains information about the current recording

_$XDG_RUNTIME_DIR/screencast_quiet_
	Contains information about the current quiet recording

# DEPENDENCIES

- pkill
- slurp
- wf-recorder
