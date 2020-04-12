tmux-extract-tokens(1)

# NAME

tmux-extract-tokens - Extract token from current tmux pane or window

# SYNOPSIS

tmux-extract-tokens ( _pane_ | _window_ ) ( _hashes_ | _lines_ | _paths_ | _urls_ | _words_ | _WORDS_ )

# DESCRIPTION

Open interface to allow the selection of a token from the current tmux pane or window.
Diverse actions are then available on the selected item:
- copy in tmux buffer and paste in tmux pane (_{key/enter}_)
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

_hashes_
	Extract hexadecimal hashes

_lines_
	Extract full lines

_paths_
	Extract file paths

_urls_
	Extract URLs

_words_
	Extract words (alphanumerical characters and few symbols allowed)

_WORDS_
	Extract words (any consecutive characters separated by spaces)

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- grep with -o option #FIXME: This script is not POSIX compliant
- fzf-tmux
- tmux
- wl-copy
- xdg-open
