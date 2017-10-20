#compdef rbt

_commands() {
  local commands=(
    post-last
    publish-last
    submit-last
    discard-last
    apply
    status
  )

  compadd "$@" $commands
}

_arguments \
  '1:command:_commands'

