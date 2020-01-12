# TODO

## Periodic
  - upgrade packages, plugins, extensions,...
  - remove unused plugins, aliases, functions,...
  - replace unnecessary dependencies with own simpler config, scripts,...
  - review packages and plugins to find newer better alternatives
  - check that packages versions are up to date with the `report-versions` utility script
  - check if some code tags can be fixed with the `report-tags` utility script

## Cleaning
  - sway-move-window-new-workspace should use sway-create-workspace
    or at least use the same algorithm for the creation of the workspace

## Bugs

## Testing

## Improvements
  - allow env scripts to receive data from stdin
  - better man pages:
    * add new sections only to relevant scripts:
      STDIN, STDOUT, EXIT STATUS, EXAMPLES, CONFIG, ACKNOWLEDGMENTS,...
    * extend info about some current sections:
      files format, files naming conventions,...
  - rename once again colored-man to man to have it used everywhere automatically  
    implies changing all man pages to use "1dotfiles" suffix to be able to access both docs
  - speed up sway-create-workspace by creating workspace with "max(workspaces number) + 1" as number

## New Features
  - add sway binding with script to switch back and forth windows in current workspace
  - add sway bindings and script to move workspace right/next or left/previous
  - create scripts for backup to hard drive or USB stick
  - global keybindings management similar to colors with placeholders and README
    * limit usage of difficult bindings requiring many simultaneous keys to risky/rare actions
    * the more often the action is needed, the easier the binding to type (shift for less used type pane/window)
    * focused on single output usage
    * aliases list (next/previous/create/...)
    * global organization (sway:super, alacritty:ctrl+shift, tmux:ctrl+space,...)
    * local organization (uppercase for sway windows and tmux panes, lowercase for sway workspace and tmux windows,...)

## Research
  - replace xdg-utils with wrapper for xdg-open  
    see [Drew Devault script](https://git.sr.ht/~sircmpwn/dotfiles/tree/master/bin/xdg-open)
