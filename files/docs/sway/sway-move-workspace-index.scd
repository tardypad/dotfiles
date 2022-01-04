SWAY-MOVE-WORKSPACE-INDEX(1perso)

# NAME

sway-move-workspace-index - Move current workspace to index

# SYNOPSIS

sway-move-workspace-index _index_

# DESCRIPTION

Move current workspace to index position in current output. It supports indexes
which are not part of the current workspaces indexes.

_WARNING_: It also renumber the workspaces as a side effect. This is done to
simplify the implementation by ignoring some special cases:
- workspaces without number
- multiple workspaces with same number

# OPTIONS

None

# OPERANDS

_index_
	Index to move the workspace to

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- jq
- swaymsg
