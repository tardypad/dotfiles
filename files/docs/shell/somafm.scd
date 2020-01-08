somafm(1)

# NAME

somafm - Display SomaFM channels information

# SYNOPSIS

somafm *channels*

somafm *direct_url* _channel_

somafm *playlist* _channel_

# DESCRIPTION

Print SomaFM channels information

# OPTIONS

None

# OPERANDS

*channels*
	Prints list of all channels with their information

*direct_url*
	Prints the URL to a channel stream

*playlist*
	Prints the URL to a channel playlist

_channel_
	Identifier of the channel

# ENVIRONMENT VARIABLES

_XDG_CACHE_HOME_
	Path to user-specific base directory to store cached data++
If unset, defaults to $HOME/.cache

# FILES

_$XDG_CACHE_HOME/somafm_channels.json_
	File used as cache for the list of channels

# DEPENDENCIES

- curl
- jq
- stat
