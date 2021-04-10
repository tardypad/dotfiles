mysql-env(1perso)

# NAME

mysql-env - Start MySQL or run a query within an environment

# SYNOPSIS

mysql-env _id_ [_query_] [-- _option_...]

# DESCRIPTION

Start MySQL or run a query within an environment

# OPTIONS

None

# OPERANDS

_env_
	Environment identifier

_query_
	Query to run

_option_
	*mysql* option

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

# FILES

_$XDG_DATA_HOME/env/mysql/\*_
	Files defining the MySQL environment

# DEPENDENCIES

- mysql
