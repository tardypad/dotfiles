influx-env(1perso)

# NAME

influx-env - Start InfluxDB or run a query within a project environment

# SYNOPSIS

influx-env _project_ [_query_] [-- _option_...]

# DESCRIPTION

Start InfluxDB or run a query within a project environment

# OPTIONS

None

# OPERANDS

_project_
	Project used

_query_
	Query to run

_option_
	*influx* option

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

# FILES

_$XDG_DATA_HOME/env/influx/\*_
	Files defining the InfluxDB environment

# DEPENDENCIES

- influx
