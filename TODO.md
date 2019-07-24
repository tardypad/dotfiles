# Periodic
  - upgrade packages, plugins, extensions,...
  - remove unused plugins, aliases, functions,...
  - replace unnecessary dependencies with own simpler config, scripts,...
  - review packages and plugins to find newer better alternatives
  - check that packages versions are up to date with the `report-versions` utility script
  - check if some code tags can be fixed with the `report-tags` utility script

# Cleaning
  - review scripts templating especially functions namings  
    parse_options and validate_options functions also parse/validate operands
  - repository reorganisation:
    * move all scripts to a root folder (maybe with subfolders for git, sway,...)
    * rename packages folder to config (and update related utilities)
    * consistency of scripts using - instead of _
    * add info about repository structure in README
    * packages Makefile targets should be made with prerequisites  
      for example: sway should require sway-config, sway-scripts,...
    * review the naming of scripts  
      for example: prefix sway scripts with sway-

# Bugs

# Testing

# Improvements
  - improve all env scripts usage:
    * allow to receive query/POST body data from stdin
    * syntax highlighting of query/request keywords
    * completion of query/request keywords
  - similar keybindings for reload (currently Alt-R) and quit (currently Ctrl-q)  
    maybe Alt-r and Alt-q
  - split help script to simplify it: selection/caching vs search/display
  - better man pages:
    * add DESCRIPTION part with better explanation
    * move commands used listed on top of scripts to the doc (as DEPENDENCIES?)
    * add FILES used by the script
    * add ENVIRONMENT VARIABLES used by the script
    * check common man pages to see what other parts could be make sense to be added  
      STDIN, STDOUT, EXIT STATUS, EXAMPLES,...

# New Features
  - create scripts to manage AUR packages with personal repository  
    check [Michael Daffin blog](https://disconnected.systems/blog/archlinux-repo-in-aws-bucket/)
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
    * global organization (sway:super, termite:ctrl+shift, tmux:ctrl+space,...)
    * local organization (uppercase for sway windows and tmux panes, lowercase for sway workspace and tmux windows,...)

# Research
  - distraction free mode and scripts to disable tmux status bar, increase tmux pane,...
    * [vim limelight](https://github.com/junegunn/limelight.vim)
    * [vim goyo](https://github.com/junegunn/goyo.vim)
  - Time tracker
  - replace vim plug usage with internal vim packages
  - vim plugins for Go
