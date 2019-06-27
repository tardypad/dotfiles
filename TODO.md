# Periodic
  - upgrade packages, plugins, extensions,...
  - remove unused plugins, aliases, functions,...
  - replace unnecessary dependencies with own simpler config, scripts,...
  - review packages and plugins to find newer better alternatives
  - check that packages versions are up to date with the `report-versions` utility script
  - check if some code tags can be fixed with the `report-tags` utility script

# Cleaning

# Bugs

# Testing

# Improvements
  - improve all env scripts usage:
    * allow to receive query/POST body data from stdin
    * syntax highlighting of query/request keywords
    * completion of query/request keywords
  - similar keybindings for reload (currently Alt-R) and quit (currently Ctrl-q)  
    maybe Alt-r and Alt-q
  - POSIX compliancy:
    * change scripts, aliases, utilities,...
    * change Makefiles (make features and also the commands they use)
    * add info about it in README
    * remove usage of long options in own scripts and use getopts
    * help script can depend on zsh to find some help for its internal commands  
      but it should overall be POSIX compliant too
  - speed up help script selection of topic by caching the list

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
  - calendar app
    * [khal](https://github.com/pimutils/khal)
    * [calendar-cli](https://github.com/tobixen/calendar-cli)
  - contacts app to use in neomutt
    * [khard](https://github.com/scheibler/khard)
    * [abook](https://sourceforge.net/p/abook/git)
  - distraction free mode and scripts to disable tmux status bar, increase tmux pane,...
    * [vim limelight](https://github.com/junegunn/limelight.vim)
    * [vim goyo](https://github.com/junegunn/goyo.vim)
  - Time tracker
  - replace vim plug usage with internal vim packages
  - vim plugins for Go
