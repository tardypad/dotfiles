# TODO

## Periodic
  - upgrade packages, plugins, extensions,...
  - remove unused plugins, aliases, functions,...
  - replace unnecessary dependencies with own simpler config, scripts,...
  - review packages and plugins to find newer better alternatives
  - check that packages versions are up to date with the `report-versions` utility script
  - check if some code tags can be fixed with the `report-tags` utility script

## Cleaning

## Bugs

## Testing

## Improvements
  - improve all env scripts usage:
    * allow to receive query/POST body data from stdin
  - better man pages:
    * add DESCRIPTION part with better explanation
    * add FILES used by the script
    * add ENVIRONMENT VARIABLES used by the script
    * check common man pages to see what other parts could be make sense to be added  
      STDIN, STDOUT, EXIT STATUS, EXAMPLES,...

## New Features
  - use of Sway IPC via [i3ipc](https://github.com/acrisci/i3ipc-python)
    * alternate binding to switch back and forth window in current workspace
    * keep focus left/right/top/bottom switch within current output
    * automatically renumber workspaces
    * bindings to move a whole workspace
  - create scripts for backup to hard drive or USB stick
  - global keybindings management similar to colors with placeholders and README
    * limit usage of difficult bindings requiring many simultaneous keys to risky/rare actions
    * the more often the action is needed, the easier the binding to type (shift for less used type pane/window)
    * focused on single output usage
    * aliases list (next/previous/create/...)
    * global organization (sway:super, alacritty:ctrl+shift, tmux:ctrl+space,...)
    * local organization (uppercase for sway windows and tmux panes, lowercase for sway workspace and tmux windows,...)

## Research
  - vim plugins for Go
