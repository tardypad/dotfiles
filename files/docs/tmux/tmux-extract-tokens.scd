tmux-extract-tokens(1perso)

# NAME

tmux-extract-tokens - Extract token from current tmux pane or window

# SYNOPSIS

tmux-extract-tokens ( _pane_ | _window_ ) _type_

# DESCRIPTION

Open interface to allow the selection of a token from the current tmux pane or window.
Diverse actions are then available on the selected item:
- copy in tmux buffer and paste in tmux pane (_{key/return/return}_)
- open in browser (_ctrl-{key/open/low}_)
- search in browser (_ctrl-{key/search/low}_)
- copy in system clipboard (_ctrl-{key/yank/low}_)

# OPTIONS

None

# OPERANDS

_pane_
	Extract token from current pane

_window_
	Extract token from all panes of the current window

_type_
	Type of token to extract, see *extract-tokens*(1perso)

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- extract-tokens
- fzf-tmux
- tmux
- wl-copy
- xdg-open
