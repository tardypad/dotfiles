READ-NEWS(1perso)

# NAME

read-news - Read news from feeds

# SYNOPSIS

read-news [-t _period_] [_feed_]

# DESCRIPTION

Open interface to display all news from each feed.
Diverse actions are then available on the selected news:
- open full news in text browser (_{key/return/return}_)
- open full news in external browser (_ctrl-{key/open/low}_)

# OPTIONS

*-t* _period_
	Integer defining the period of news to display in hours++
default: 36 (1.5 day)

# OPERANDS

_feed_
	Name of the feed to read

# ENVIRONMENT VARIABLES

None

# FILES

_$HOME/.sfeed/feeds_
	Directory containing the feeds

# DEPENDENCIES

- awk with strftime function #FIXME: This script is not POSIX compliant
- date with '%s' format #FIXME: This script is not POSIX compliant
- fzf
- sfeed_update
- stat
- w3m
- xdg-open
