tmux-extract-tokens(1)

# NAME

tmux-extract-tokens - Extract token from current tmux pane

# SYNOPSIS

tmux-extract-tokens ( _hashes_ | _lines_ | _paths_ | _urls_ | _words_ | _WORDS_ )

# DESCRIPTION

Open interface to allow the selection of a token from the current tmux pane.
Diverse actions are then available on the selected item:
- copy in tmux buffer and paste in tmux pane (_enter_)
- open in browser (_ctrl-o_)
- search in browser (_ctrl-s_)
- copy in system clipboard (_ctrl-y_)

# OPTIONS

None

# OPERANDS

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

# DEPENDENCIES

- grep with -o option #FIXME: This script is not POSIX compliant
- fzf-tmux
- tmux
- wl-copy
- xdg-open
