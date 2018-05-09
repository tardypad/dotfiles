# use history and define history file location
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=${HISTSIZE}

# if a new command line being added to the history list duplicates an older one,
# the older command is removed from the list
setopt hist_ignore_all_dups

# remove unnecessary blanks from commands being written to history
setopt hist_reduce_blanks

# commands from other zsh sessions history get shared into current one
# and are searchable on the next prompt
setopt share_history
