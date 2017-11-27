#compdef http_prompt_env

_envs() {
  _path_files -g '*.hp(:r)' -W "${XDG_DATA_HOME:-$HOME/.local/share}/http-prompt/env/"
}

_arguments \
  '1:env:_envs'

