CHECK-BACKUP(1perso)

# NAME

check-backup - display backup checksums

# SYNOPSIS

check-backup _hdd_

# DESCRIPTION

Display the checksums of most important backed up folders in a HDD

# OPTIONS

None

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
