#compdef setup_config.zsh

local targets

# find all targets
targets=$(
  find . \
    -maxdepth 1 -type d \
    ! -name '.*' \
    -printf '%f '
)

_alternative "1:Targets:($targets)"
