mysql-env(1)

# NAME

mysql-env - Start MySQL or run a query within a project environment

# SYNOPSIS

mysql-env _project_ [_query_] [-- _option_...]

# DESCRIPTION

Start MySQL or run a query within a project environment

# OPTIONS

None

# OPERANDS

_project_
	Project used

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
