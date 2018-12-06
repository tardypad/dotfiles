# use vi mode line editing
bindkey -v

# define modes symbol
VI_INS_MODE_SYMBOL='>'
VI_CMD_MODE_SYMBOL='<'

# define initial mode
VI_MODE_SYMBOL="${VI_INS_MODE_SYMBOL}"

# on keymap change, define the mode and redraw prompt
zle-keymap-select() {
  if [ "${KEYMAP}" = 'vicmd' ]; then
    VI_MODE_SYMBOL="${VI_CMD_MODE_SYMBOL}"
  else
    VI_MODE_SYMBOL="${VI_INS_MODE_SYMBOL}"
  fi
  zle reset-prompt
}
zle -N zle-keymap-select

# reset to default mode at the end of line input reading
zle-line-finish() {
  VI_MODE_SYMBOL="${VI_INS_MODE_SYMBOL}"
}
zle -N zle-line-finish

# Fix a bug when you C-c in CMD mode, you'd be prompted with CMD mode indicator
# while in fact you would be in INS mode.
# Fixed by catching SIGINT (C-c), set mode to INS and repropagate the SIGINT,
# so if anything else depends on it, we will not break it.
TRAPINT() {
  VI_MODE_SYMBOL="${VI_INS_MODE_SYMBOL}"
  return $(( 128 + $1 ))
}

# Use Alt-. to insert last word of previous command
bindkey -M viins '\e.' insert-last-word

# Tab expansion on the current word up to the cursor
bindkey -M viins '^I' expand-or-complete-prefix

# define some local history navigation widgets
local-history-incremental-search-backward() {
  zle set-local-history 1
  zle history-incremental-search-backward
}
zle -N local-history-incremental-search-backward

zle-isearch-exit() {
  zle set-local-history 0
}
zle -N zle-isearch-exit

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
bindkey -M isearch '^r' history-incremental-search-backward
bindkey -M viins '^p' up-local-history
bindkey -M vicmd '^p' up-local-history
bindkey -M viins '^n' down-local-history
bindkey -M vicmd '^n' down-local-history

# global history navigation (using Alt key)
bindkey -M viins '\er' history-incremental-search-backward
bindkey -M vicmd '\er' history-incremental-search-backward
bindkey -M isearch '\er' history-incremental-search-backward
bindkey -M viins '\ep' up-history
bindkey -M vicmd '\ep' up-history
bindkey -M viins '\en' down-history
bindkey -M vicmd '\en' down-history

# disable usage of Ctrl-J as Enter
bindkey -M viins '^j' self-insert
bindkey -M vicmd '^j' self-insert
bindkey -M isearch '^j' self-insert


replace-run-command() {
  BUFFER="$1"
  zle accept-line
}
zle -N replace-run-command

# bind Alt-Shift-R to reload config
replace-run-reload-config() replace-run-command 'source "${HOME}/.zshrc"'
zle -N replace-run-reload-config
bindkey -M viins '\eR' replace-run-reload-config
bindkey -M vicmd '\eR' replace-run-reload-config
bindkey -M isearch '\eR' replace-run-reload-config

# bind Ctrl-S to get a shell status
replace-run-status() replace-run-command status
zle -N replace-run-status
bindkey -M viins '^s' replace-run-status
bindkey -M vicmd '^s' replace-run-status
bindkey -M isearch '^s' replace-run-status

# bind Alt-F to launch file browser
replace-run-file-browser() replace-run-command vifm
zle -N replace-run-file-browser
bindkey -M viins '\ef' replace-run-file-browser
bindkey -M vicmd '\ef' replace-run-file-browser
bindkey -M isearch '\ef' replace-run-file-browser

# bind Alt-S to switch to root
replace-run-root() replace-run-command root
zle -N replace-run-root
bindkey -M viins '\es' replace-run-root
bindkey -M vicmd '\es' replace-run-root
bindkey -M isearch '\es' replace-run-root
