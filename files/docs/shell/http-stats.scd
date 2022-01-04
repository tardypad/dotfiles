HTTP-STATS(1perso)

# NAME

http-stats - Display some metrics about a HTTP call

# SYNOPSIS

http-stats _url_ [_options_]

# DESCRIPTION

Display some time, speed and size metrics about a HTTP call

# OPERANDS

_url_
	URL to call

_options_
	*curl* options++
except *-o*, *-s*, *-S*, *-w* already used internally

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- column
- curl

# ACKNOWLEDGEMENTS

Heavily inspired by Masaki Ishiyama httpstat bash version
https://github.com/b4b4r07/httpstat/blob/master/httpstat.sh
