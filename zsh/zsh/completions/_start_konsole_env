#compdef start_konsole_env

local env_dir_path=$(
  echo $( dirname $( which start_konsole_env ) )'/konsole_env'
)

_targets() {
  _path_files -g '*.sh(:r)' -W ${env_dir_path}
}

_arguments \
  '(-h --help)'{-h,--help}'[display the help]' \
  '1:target:_targets'
