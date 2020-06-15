http-env(1perso)

# NAME

http-env - Run a HTTP request to a project environment

# SYNOPSIS

http-env _project_ _env_ _method_ _path_ [_item_...] [-- _option_...]

# DESCRIPTION

Run a HTTP request to a project environment

# OPTIONS

None

# OPERANDS

_project_
	Project used

_env_
	Environment to send the request to

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

_$XDG_DATA_HOME/env/http/\*/\*_
	Files defining the http environment

# DEPENDENCIES

- http
