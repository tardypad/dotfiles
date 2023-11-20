SCREENSHOT(1perso)

# NAME

screenshot - Take a screenshot of a region

# SYNOPSIS

screenshot [-d _delay_]

# DESCRIPTION

Open screen overlay to select a region to screenshot. The image is saved in the
Desktop folder.

After the screenshot is taken, it is displayed in imv with some extra bindings:
- delete (_{key/delete}_)
- edit (_{key/edit}_)

# OPTIONS

*-d* _delay_
	wait _delay_ seconds the region selection and the screenshot to allow for
	extra preparations.

# OPERANDS

None

# ENVIRONMENT VARIABLES

_XDG_DESKTOP_DIR_
	Path to user-specific desktop directory++
If unset, defaults to $HOME/Desktop

# FILES

_$XDG_DESKTOP_DIR_
	Target directory to contain the images

# DEPENDENCIES

- gimp
- grim
- imv
- slurp
