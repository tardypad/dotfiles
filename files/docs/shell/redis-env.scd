redis-env(1perso)

# NAME

redis-env - Start Redis or run a query within a project environment

# SYNOPSIS

redis-env _project_ [_query_] [-- _option_...]

# DESCRIPTION

Start Redis or run a query within a project environment

# OPTIONS

None

# OPERANDS

_project_
	Project used

_query_
	Query to run

_option_
	*redis-cli* option

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

# FILES

_$XDG_DATA_HOME/env/redis/\*_
	Files defining the Redis environment

# DEPENDENCIES

- redis-cli
