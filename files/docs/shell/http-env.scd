HTTP-ENV(1perso)

# NAME

http-env - Run a HTTP request to an environment

# SYNOPSIS

http-env _env_ _method_ _path_ [_item_...] [-- _option_...]

# DESCRIPTION

Run a HTTP request to an environment

# OPTIONS

None

# OPERANDS

_env_
	Environment identifier

_method_
	HTTP method

_path_
	Request path

_item_
	Request items

_option_
	*http* option

# ENVIRONMENT VARIABLES

_XDG_DATA_HOME_
	Path to user-specific base directory to store data files++
If unset, defaults to $HOME/.local/share

# FILES

_$XDG_DATA_HOME/env/http/\*_
	Files defining the http environment

# DEPENDENCIES

- http
