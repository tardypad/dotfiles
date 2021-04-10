influx-env(1perso)

# NAME

influx-env - Start InfluxDB or run a query within an environment

# SYNOPSIS

influx-env _env_ [_query_] [-- _option_...]

# DESCRIPTION

Start InfluxDB or run a query within an environment

# OPTIONS

None

# OPERANDS

_env_
	Environment identifier

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
