#compdef start_konsole_env

local targets

local env_dir_path=$(
  echo $( dirname $( which start_konsole_env ) )'/konsole_env'
)

targets=( $(
  ls "${env_dir_path}" \
    | sed -r 's/(.*).sh/\1/'
) )

_arguments "1:Targets:($targets)"
