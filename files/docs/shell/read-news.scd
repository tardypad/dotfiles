read-news(1)

# NAME

read-news - Read news from feeds

# SYNOPSIS

read-news [-t _period_] [_feed_]

# OPTIONS

*-t* _period_
	Integer defining the period of news to display in hours++
default: 36 (1.5 day)

# OPERANDS

_feed_
	Name of the feed to read

# DEPENDENCIES

- awk with strftime function #FIXME: This script is not POSIX compliant
- fzf
- sfeed_update
