#compdef setup_config

_tools() {
  local tools=( $(
    find . \
      -maxdepth 1 -type d \
      ! -name '.*' \
      -printf '%f '
  ) )

  compadd "$@" $tools
}

_destinations() {
  typeset -Ag remote_hosts
  remote_hosts=( $(
    [[ -f ./remote_hosts ]] && cat ./remote_hosts
  ) )
  local destinations=( ${(k)remote_hosts} )
  destinations+=( local remote )

  compadd "$@" $destinations
}

_arguments \
  '(-d --dest)'{-d,--dest}'[destination to setup]:destination:_destinations' \
  '(-h --help)'{-h,--help}'[display the help]' \
  '*:tools:_tools'
