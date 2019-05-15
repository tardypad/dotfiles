# use history and define history file location
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=${HISTSIZE}

# if a new command line being added to the history list duplicates an older one,
# the older command is removed from the list
setopt hist_ignore_all_dups

# remove unnecessary blanks from commands being written to history
setopt hist_reduce_blanks

# store start and duration of commands
setopt extended_history

# append command to file immediately after it finishes
setopt inc_append_history_time
