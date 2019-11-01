# use vi mode line editing
bindkey -v

# Use Alt-. to insert last word of previous command
bindkey -M viins '\e.' insert-last-word

# Tab expansion on the current word up to the cursor
bindkey -M viins '^I' expand-or-complete-prefix

# menu navigation with Tab and Shift-Tab
zmodload zsh/complist
bindkey -M menuselect '^I' menu-complete
bindkey -M menuselect '[Z' reverse-menu-complete

# exit menu selection with Escape
bindkey -M menuselect '' send-break

# history navigation
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward
bindkey -M isearch '^r' history-incremental-search-backward
bindkey -M viins '^p' up-history
bindkey -M vicmd '^p' up-history
bindkey -M viins '^n' down-history
bindkey -M vicmd '^n' down-history

# disable usage of Ctrl-J as Enter
bindkey -M viins '^j' self-insert
bindkey -M vicmd '^j' self-insert
bindkey -M isearch '^j' self-insert

# kill buffer
bindkey -M viins '^k' kill-buffer
bindkey -M vicmd '^k' kill-buffer
bindkey -M isearch '^k' kill-buffer


replace-run-command() {
  BUFFER="$1"
  zle accept-line
}
zle -N replace-run-command

# get a shell status
replace-run-status() replace-run-command status
zle -N replace-run-status
bindkey -M viins '^g' replace-run-status
bindkey -M vicmd '^g' replace-run-status
bindkey -M isearch '^g' replace-run-status


# Enable surround text-objects (quotes, brackets)

autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done

autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

autoload -Uz surround
zle -N delete-surround surround
zle -N change-surround surround
zle -N add-surround surround
bindkey -M vicmd cs change-surround
bindkey -M vicmd ds delete-surround
bindkey -M vicmd ys add-surround
bindkey -M visual S add-surround


# edit command line in editor

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd '^e' edit-command-line
bindkey -M viins '^e' edit-command-line
bindkey -M isearch '^e' edit-command-line


## autosuggestions

#  accepts and executes suggestion
bindkey '^o' autosuggest-execute
bindkey -M vicmd '^o' autosuggest-execute


## history substring search

zle -N history-substring-search-up
zle -N history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
