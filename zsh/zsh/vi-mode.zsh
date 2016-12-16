# use vi mode line editing
bindkey -v

# define modes display names
VI_INS_MODE='ins'
VI_CMD_MODE='cmd'

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

# Use Alt-. to insert last word of previous command
bindkey -M viins '\e.' insert-last-word

# Tab expansion on the current word up to the cursor
bindkey -M viins '^I' expand-or-complete-prefix

# define some local history navigation widgets
local-history-incremental-search-backward() {
  zle set-local-history 1
  zle history-incremental-search-backward
  zle set-local-history 0
}
zle -N local-history-incremental-search-backward

up-local-history() {
  zle set-local-history 1
  zle up-history
  zle set-local-history 0
}
zle -N up-local-history

down-local-history() {
  zle set-local-history 1
  zle down-history
  zle set-local-history 0
}
zle -N down-local-history

# local history navigation (using Ctrl key)
bindkey -M viins '^r' local-history-incremental-search-backward
bindkey -M vicmd '^r' local-history-incremental-search-backward
bindkey -M viins '^p' up-local-history
bindkey -M vicmd '^p' up-local-history
bindkey -M viins '^n' down-local-history
bindkey -M vicmd '^n' down-local-history

# global history navigation (using Alt key)
bindkey -M viins '\er' history-incremental-search-backward
bindkey -M vicmd '\er' history-incremental-search-backward
bindkey -M viins '\ep' up-history
bindkey -M vicmd '\ep' up-history
bindkey -M viins '\en' down-history
bindkey -M vicmd '\en' down-history
