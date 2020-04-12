# use vi mode line editing
bindkey -v

# Use Alt-. to insert last word of previous command
bindkey -M viins '\e{key/.}' insert-last-word

# Tab expansion on the current word up to the cursor
bindkey -M viins '^{key/complete/upp}' expand-or-complete-prefix

# menu navigation with Tab and Shift-Tab
zmodload zsh/complist
bindkey -M menuselect '^{key/complete/upp}' menu-complete
bindkey -M menuselect '{key/[Z}'          reverse-menu-complete

# exit menu selection with Escape
bindkey -M menuselect '{key/}' send-break

# history navigation
bindkey -M viins   '^{key/r}'        history-incremental-search-backward
bindkey -M vicmd   '^{key/r}'        history-incremental-search-backward
bindkey -M isearch '^{key/r}'        history-incremental-search-backward
bindkey -M viins   '^{key/previous}' up-history
bindkey -M vicmd   '^{key/previous}' up-history
bindkey -M viins   '^{key/next}'     down-history
bindkey -M vicmd   '^{key/next}'     down-history

# disable usage of Ctrl-J as Enter
bindkey -M viins   '^{key/newline}' self-insert
bindkey -M vicmd   '^{key/newline}' self-insert
bindkey -M isearch '^{key/newline}' self-insert

# kill buffer
bindkey -M viins   '^{key/command_delete_all}' kill-buffer
bindkey -M vicmd   '^{key/command_delete_all}' kill-buffer
bindkey -M isearch '^{key/command_delete_all}' kill-buffer


replace-run-command() {
  BUFFER="$1"
  zle accept-line
}
zle -N replace-run-command

# get a shell status
replace-run-status() replace-run-command status
zle -N replace-run-status
bindkey -M viins   '^{key/g}' replace-run-status
bindkey -M vicmd   '^{key/g}' replace-run-status
bindkey -M isearch '^{key/g}' replace-run-status


# Enable surround text-objects (quotes, brackets)

autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m {key/$c} select-bracketed
  done
done

autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m {key/$c} select-quoted
  done
done

autoload -Uz surround
zle -N delete-surround surround
zle -N change-surround surround
zle -N add-surround surround
bindkey -M vicmd  {key/c}{key/s} change-surround
bindkey -M vicmd  {key/d}{key/s} delete-surround
bindkey -M vicmd  {key/y}{key/s} add-surround
bindkey -M visual {key/S}        add-surround


# edit command line in editor

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd   '^{key/edit/low}' edit-command-line
bindkey -M viins   '^{key/edit/low}' edit-command-line
bindkey -M isearch '^{key/edit/low}' edit-command-line


## autosuggestions

#  accepts and executes suggestion
bindkey          '^{key/o}' autosuggest-execute
bindkey -M vicmd '^{key/o}' autosuggest-execute


## history substring search

zle -N history-substring-search-up
zle -N history-substring-search-down
bindkey -M vicmd '{key/up}' history-substring-search-up
bindkey -M vicmd '{key/down}' history-substring-search-down
