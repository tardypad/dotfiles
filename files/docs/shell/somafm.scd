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

# DEPENDENCIES

- curl
- jq
- stat
