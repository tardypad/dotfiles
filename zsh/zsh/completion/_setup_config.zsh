#compdef setup_config.zsh

local tools
local options

# find all tools
tools=$(
  find . \
    -maxdepth 1 -type d \
    ! -name '.*' \
    -printf '%f '
)

options='
  -h --help
  -d --dest
'

_alternative \
  "1:Options:($options)" \
  "2:Tools:($tools)"
