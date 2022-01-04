QUERY-HOSTS-TAGS(1perso)

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
	Couple _tag_/_value_ to filter the hosts to display++
"host" is an artificial tag with the value of the host added for scripting convenience

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

# FILES

_$XDG_DATA_HOME/hosts_tags_\*.yaml_
	Hosts tags files

# DEPENDENCIES

None
