#compdef rbt

_commands() {
  local commands=(
    post-head
    publish-head
    submit-head
    discard-head
    apply
    status
    submit-all
  )

  compadd "$@" $commands
}

_arguments \
  '1:command:_commands'

