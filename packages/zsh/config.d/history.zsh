# use history and define history file location
export HISTFILE="${HOME}/.zsh_history"
export HISTSIZE=10000
export SAVEHIST="${HISTSIZE}"

# store start and duration of commands
setopt extended_history

# append command to file immediately after it finishes
setopt inc_append_history_time
