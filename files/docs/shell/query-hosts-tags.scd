query-hosts-tags(1perso)

# NAME

query-hosts-tags - Query the hosts tags file

# SYNOPSIS

query-hosts-tags

query-hosts-tags *hosts* [_tag_=_value_...]

query-hosts-tags *tags* _host_

# DESCRIPTION

Print information about hosts and their tags

# OPTIONS

None

# OPERANDS

*hosts*
	Print the hosts matching the tags operands++
Without any such operand, it displays all the hosts

*tags*
	Print tags from the host operand

_host_
	Host to display tags of

_tag_=_value_
	Couple _tag_/_value_ to filter the hosts to display

# ENVIRONMENT VARIABLES

_XDG_CACHE_HOME_
	Path to user-specific base directory to store cached data++
If unset, defaults to $HOME/.cache

# FILES

_$XDG_CACHE_HOME/hosts_tags_\*.yaml_
	Hosts tags files

# DEPENDENCIES

None
