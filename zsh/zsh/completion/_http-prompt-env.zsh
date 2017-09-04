#compdef http_prompt_env

_envs() {
  _path_files -g '*.hp(:r)' -W "${HOME}/.local/share/http-prompt/env/"
}

_arguments \
  '1:env:_envs'

