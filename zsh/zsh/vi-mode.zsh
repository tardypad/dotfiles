# use vi mode line editing
bindkey -v

# define modes display names
VI_INS_MODE='INS'
VI_CMD_MODE='CMD'

# define initial mode
VI_MODE=$VI_INS_MODE

# on keymap change, define the mode and redraw prompt
function zle-keymap-select {
  VI_MODE="${${KEYMAP/vicmd/${VI_CMD_MODE}}/(main|viins)/${VI_INS_MODE}}"
  zle reset-prompt
}
zle -N zle-keymap-select

# reset to default mode at the end of line input reading
function zle-line-finish {
  VI_MODE=$VI_INS_MODE
}
zle -N zle-line-finish

# Fix a bug when you C-c in CMD mode, you'd be prompted with CMD mode indicator
# while in fact you would be in INS mode.
# Fixed by catching SIGINT (C-c), set mode to INS and repropagate the SIGINT,
# so if anything else depends on it, we will not break it.
function TRAPINT() {
  VI_MODE=$VI_INS_MODE
  return $(( 128 + $1 ))
}

# use ;; to go to normal mode
bindkey -M viins ';;' vi-cmd-mode

# C-r to perform backward search in history
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

# C-p and C-n to navigate history
bindkey -M viins '^p' up-history
bindkey -M vicmd '^p' up-history
bindkey -M viins '^n' down-history
bindkey -M vicmd '^n' down-history

# Use Alt-. to insert last word of previous command
bindkey -M viins '\e.' insert-last-word
