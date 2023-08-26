CHECK-BACKUP(1perso)

# NAME

check-backup - display backup checksums

# SYNOPSIS

check-backup [-a] _hdd_

# DESCRIPTION

Display the checksums of most important backed up folders in a HDD

# OPTIONS

*-a*
	Check all backed up folders

# OPERANDS

_hdd_
	HDD to check++
valid hdds:
	- hdd1
	- hdd2

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- lsblk
- md5sum
- pv
- tar
