#compdef setup_config.zsh

local targets
local options

# find all targets
targets=$(
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
  "2:Targets:($targets)"
