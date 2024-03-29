MOUNT-DEVICE(1perso)

# NAME

mount-device - Mount or unmount personal external devices

# SYNOPSIS

mount-device [-u] _id_

# DESCRIPTION

Mount or unmount personal external devices.

# OPTIONS

*-u*
	Unmount device

# OPERANDS

_id_
	Identifier of the device and partition to mount or unmount++
Valid identifiers:
- kobo
- lacie
- tdk_data
- tdk_secret
- toshiba

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- cryptsetup
- doas
- mount
- umount
