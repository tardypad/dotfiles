PASS(1perso)

# NAME

pass - Wrapper for *pass*(1)

# SYNOPSIS

see *pass*(1)

# DESCRIPTION

Pass wrapper for Yubikey PGP touch notifications.

Only supports the exact commands used internally using the "show" subcommand.

# OPTIONS

No change

# OPERANDS

*touch*
	Display pass names waiting for a touch if any++
_WARNING_: the names are in the order they were added but this does not mean
they would be decrypted in that same order after the touch.

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/yubikey_gpg_
	Contains information about the pass names waiting for a touch

# DEPENDENCIES

- mktemp
