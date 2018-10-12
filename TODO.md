# Periodic
  - upgrade packages, plugins, extensions,...
  - remove unused plugins, aliases, functions,...
  - replace unnecessary dependencies with own simpler config, scripts,...
  - review packages and plugins to find newer better alternatives
  - check that packages versions are up to date with the `report_versions` utility script
  - check if some code tags can be fixed with the `report_tags` utility script

# Cleaning

# Bugs
  - there seems to be an issue with tmux_env use of regexes in case of similar session namings  
    for example if one session is called 'legacy_production' and the other one 'production'

# Testing

# Improvements
  - review and improve copy paste workflow between terminals/vim/tmux/...
    * [yank](https://github.com/mptre/yank) copy output to clipboard
    * [Joe Schafer blog post](https://blog.d46.us/zsh-tmux-emacs-copy-paste/) zsh/tmux/emacs
  - update vim statusline/tabline
    * mode with colors
    * ALE errors/warnings display
  - make some own vim config as plugin
  - usage of vim autoload for some functions
  - consistency of words separators across packages
  - improve/add completion of git aliases
  - add ability in ZSH to use common ci"  da' and such vim bindings  
    check bindings and functions from [zsh-vim-mode](https://github.com/softmoth/zsh-vim-mode)
  - improve mysql_env and http_env usage:
    * allow to receive query/POST body data from stdin
    * editing of such data in vim directly
    * syntax highlighting of query/request keywords
    * completion of query/request keywords

# New Features
  - backup of notes
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
  - extra password tools
    * [2fa](https://github.com/rsc/2fa)
    * [passotp](https://github.com/tadfisher/pass-otp)
  - investigate vim Python plugins
  - consider replacing gnuplot with a simpler tool:
    * [termgraph](https://github.com/mkaz/termgraph)
    * [spark](https://github.com/holman/spark)
  - once using Sway 1.0, evaluate [mako](https://github.com/emersion/mako) as notification system
  - replace jq usage with simpler [gron](https://github.com/tomnomnom/gron)
