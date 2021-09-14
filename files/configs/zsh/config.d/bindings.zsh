# use vi mode line editing
bindkey -v

# insert last word of previous command
bindkey -M viins '\e{key/.}' insert-last-word

# expansion on the current word up to the cursor
bindkey -M viins '^{key/complete/upp}' expand-or-complete-prefix

# menu navigation
zmodload zsh/complist
bindkey -M menuselect '^{key/complete/upp}' menu-complete
bindkey -M menuselect '{key/[Z}'          reverse-menu-complete

# exit menu selection
bindkey -M menuselect '{key/}' send-break

# history navigation
bindkey -M viins   '^{key/r}'        history-incremental-search-backward
bindkey -M vicmd   '^{key/r}'        history-incremental-search-backward
bindkey -M isearch '^{key/r}'        history-incremental-search-backward
bindkey -M viins   '^{key/previous}' up-history
bindkey -M vicmd   '^{key/previous}' up-history
bindkey -M viins   '^{key/next}'     down-history
bindkey -M vicmd   '^{key/next}'     down-history

# disable usage of Enter as Return
bindkey -M viins   '^{key/enter}' self-insert
bindkey -M vicmd   '^{key/enter}' self-insert
bindkey -M isearch '^{key/enter}' self-insert

# kill buffer
bindkey -M viins   '^{key/command_delete_all}' kill-buffer
bindkey -M vicmd   '^{key/command_delete_all}' kill-buffer
bindkey -M isearch '^{key/command_delete_all}' kill-buffer

# run command with sudo
run-with-sudo() {
  if [[ $BUFFER != "sudo "* ]]; then
    BUFFER="sudo $BUFFER"
    zle accept-line
  fi
}
zle -N run-with-sudo
bindkey -M viins   '^{key/x}{key/s}' run-with-sudo
bindkey -M vicmd   '^{key/x}{key/s}' run-with-sudo
bindkey -M isearch '^{key/x}{key/s}' run-with-sudo


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

# bring background job to foreground (inverse to Ctrl-Z suspend)
replace-run-fg() replace-run-command fg
zle -N replace-run-fg
bindkey -M viins   '\e{key/suspend}' replace-run-fg
bindkey -M vicmd   '\e{key/suspend}' replace-run-fg
bindkey -M isearch '\e{key/suspend}' replace-run-fg


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

edit-command-line-custom () {
  local EDITOR='vim -c "%s/ \(-\{1,2\}\)/ \\\\\r  \1/eg" -c "%s/|/ \\\\\r| /eg" +w +noh'
  edit-command-line
}

autoload -U edit-command-line
zle -N edit-command-line
zle -N edit-command-line-custom
bindkey -M vicmd   '^{key/edit/low}' edit-command-line-custom
bindkey -M viins   '^{key/edit/low}' edit-command-line-custom
bindkey -M isearch '^{key/edit/low}' edit-command-line-custom


## autosuggestions

#  accepts and executes suggestion
bindkey          '^{key/o}' autosuggest-execute
bindkey -M vicmd '^{key/o}' autosuggest-execute


## history substring search

zle -N history-substring-search-up
zle -N history-substring-search-down
bindkey -M vicmd '{key/up}' history-substring-search-up
bindkey -M vicmd '{key/down}' history-substring-search-down
