#compdef start_tmux_env

local targets

local env_dir_path=$(
  echo $( dirname $( which start_tmux_env ) )'/tmux_env'
)

targets=( $(
    ls "${env_dir_path}"
) )

_arguments "1:Targets:($targets)"
