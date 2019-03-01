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
  - review and improve copy paste workflow between terminals/vim/tmux/...
    * [yank](https://github.com/mptre/yank) copy output to clipboard
    * [Joe Schafer blog post](https://blog.d46.us/zsh-tmux-emacs-copy-paste/) zsh/tmux/emacs
  - update vim statusline/tabline
    * ALE errors/warnings display
  - make some own vim config as plugin
  - usage of vim autoload for some functions
  - improve/add completion of git aliases
  - improve all env scripts usage:
    * allow to receive query/POST body data from stdin
    * editing of such data in vim directly
    * syntax highlighting of query/request keywords
    * completion of query/request keywords

# New Features
  - create scripts to manage AUR packages with personal repository  
    check [Michael Daffin blog](https://disconnected.systems/blog/archlinux-repo-in-aws-bucket/)
  - backup of ncmpcpp lyrics
  - backup of qutebrowser bookmarks/quickmarks

# Research
  - [Drew Devault blog post](https://drewdevault.com/2018/02/05/Introduction-to-POSIX-shell.html)
    evaluate making scripts POSIX compliant
  - calendar app
    * [khal](https://github.com/pimutils/khal)
    * [calendar-cli](https://github.com/tobixen/calendar-cli)
    * [gcalcli](https://github.com/insanum/gcalcli)
  - contacts app to use in neomutt
    * [khard](https://github.com/scheibler/khard)
    * [abook](https://sourceforge.net/p/abook/git)
    * [goobook](https://gitlab.com/goobook/goobook)
  - distraction free mode and scripts to disable tmux status bar, increase tmux pane,...
    * [vim limelight](https://github.com/junegunn/limelight.vim)
    * [vim goyo](https://github.com/junegunn/goyo.vim)
  - vim debugger [vdebug](https://github.com/joonty/vdebug)
  - once using Sway 1.0, evaluate third party clients as defined in  
    [Drew Devault blog post](https://drewdevault.com/2018/10/20/Sway-1.0-highlights.html)
  - Time tracker  
    with maybe integration to JIRA via [go-jira](https://github.com/Netflix-Skunkworks/go-jira)
