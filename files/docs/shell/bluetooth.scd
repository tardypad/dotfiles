BLUETOOTH(1perso)

# NAME

bluetooth - Bluetooth commands

# SYNOPSIS

bluetooth *connect* _device_alias_

bluetooth *disconnect* _device_alias_

bluetooth *receive*

bluetooth *send* _device_alias_ _file_

# DESCRIPTION

Bluetooth commands

# OPTIONS

None

# OPERANDS

*connect*
	Connect to a bluetooth device

*disconnect*
	Disconnect from a bluetooth device

*receive*
	Prepare to receive files

*send*
	Send file to a bluetooth device

_device_alias_
	Alias of the bluetooth device

_file_
	Path of the file to send

# ENVIRONMENT VARIABLES

_XDG_DOWNLOAD_DIR_
	Path to user-specific downloads directory++
If unset, defaults to $HOME/Downloads

# FILES

_$XDG_DOWNLOAD_DIR_
	Directory containing the received files

# DEPENDENCIES

- bluetoothctl
- bt-obex
- pkill
