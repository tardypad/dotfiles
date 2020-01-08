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
    * per script add new specific relevant parts: STDIN, STDOUT, EXIT STATUS, EXAMPLES, CONFIG, ACKNOWLEDGMENTS...  
      and extend current ones: files format, files naming conventions,...

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
