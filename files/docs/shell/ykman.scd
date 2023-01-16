YKMAN(1perso)

# NAME

ykman - Wrapper for *ykman*

# SYNOPSIS

see *ykman --help*

# DESCRIPTION

Yubikey manager wrapper for OATH touch notifications

# OPTIONS

No change

# OPERANDS

*oath touch*
	Display OATH code name waiting for a touch if any

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/yubikey_oath_
	Contains information about the OATH code waiting for a touch

# DEPENDENCIES

- pkill
