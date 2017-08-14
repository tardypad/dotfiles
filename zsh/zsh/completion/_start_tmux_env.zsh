#compdef start_tmux_env

local env_dir_path=$(
  echo $( dirname $( which start_tmux_env ) )'/tmux_env'
)

_targets() {
  local targets=( $(
    ls "${env_dir_path}"
  ) )

  compadd "$@" $targets
}

_sessions() {
  _path_files -g '*.sh(:r)' -W "${env_dir_path}/$words[CURRENT-1]"
}

_arguments \
  '1:target:_targets' \
  '2:session:_sessions'
