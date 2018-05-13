# Periodic
  - upgrade packages, plugins, extensions,...
  - remove unused plugins, aliases, functions,...
  - replace unnecessary dependencies with own simpler config, scripts,...
  - update qutebrowser adblock lists with `:adblock-update`
  - check that packages versions are up to date
    with the `report_versions` utility script
  - check if some code tags can be fixed
    with the `report_tags` utility script

# Cleaning

# Bugs

# Testing
  - vim gutentags root marker doesn't seem to work correctly with multiple repos

# Improvements
  - review and improve copy paste workflow between terminals/vim/tmux/...
    * [extrackto](https://github.com/laktak/extrakto) tmux search and copy/insert/...
    * [yank](https://github.com/mptre/yank) copy output to clipboard
    * [Joe Schafer blog post](https://blog.d46.us/zsh-tmux-emacs-copy-paste/) zsh/tmux/emacs
  - make vim vifm open at the project root marker if any
  - make vim fzf open at the project root marker if any
  - make vim fzf ignore some files/folders like CtrlP previously
  - use fzf in vim to switch between buffers
  - allows help to select section for man pages
  - interactively choose help topic
  - interactively choose translator languages
  - qutebrowser full bindings reworking like other packages

# New Features
  - backup of notes
  - backup of ncmpcpp lyrics
  - backup of qutebrowser bookmarks/quickmarks

# Research
  - adapt notify_break to be more Pomodoro Technique like
  - [Drew Devault blog post](https://drewdevault.com/2018/02/05/Introduction-to-POSIX-shell.html)
    evaluate making scripts POSIX compliant
  - more use of fzf all over:
    * [README](https://github.com/junegunn/fzf#usage)
    * [wiki](https://github.com/junegunn/fzf/wiki)
  - calendar app
    * [khal](https://github.com/pimutils/khal)
    * [calendar-cli](https://github.com/tobixen/calendar-cli)
    * [gcalcli](https://github.com/insanum/gcalcli)
  - contacts app to use in neomutt
    * [khard](https://github.com/scheibler/khard)
    * [abook](https://sourceforge.net/p/abook/git)
    * [goobook](https://gitlab.com/goobook/goobook)
  - better git?
    * [gitsome](https://github.com/donnemartin/gitsome)
  - small tools (look for alternatives)
    * [progress](https://github.com/Xfennec/progress) show progress for cp, mv,...
    * [lnav](https://github.com/tstack/lnav) log file navigator
  - vim session usage
    * [vim-session](https://github.com/xolox/vim-session)
  - distraction free mode  
    and scripts to disable tmux status bar, increase tmux pane,...
    * [vim limelight](https://github.com/junegunn/limelight.vim)
    * [vim goyo](https://github.com/junegunn/goyo.vim)
  - small vim tools
    * [vim-rooter](https://github.com/airblade/vim-rooter) change current working directory
    * [vim-tmux-runner](https://github.com/christoomey/vim-tmux-runner) launch command from vim into tmux pane
  - vim snippets
    * [UtilSnips](https://github.com/SirVer/ultisnips) snippets engine
    * [vim-snippers](https://github.com/honza/vim-snippets) list of snippets
  - vim debugger
    * [vdebug](https://github.com/joonty/vdebug)
  - check possible improvements from [Ian Langworth post](https://statico.github.io/vim3.html)
  - vim usage of K
    * [split-manpage](https://github.com/ludwig/split-manpage.vim)
    * [vim-dokumentary](https://github.com/gastonsimone/vim-dokumentary)
    * [investigate.vim](https://github.com/keith/investigate.vim)
  - spellchecking
    * only vim own internal spell
    * [aspell](http://aspell.net/)
    * [hunspell](http://hunspell.github.io/)
  - extra password tools
    * [2fa](https://github.com/rsc/2fa)
    * [passotp](https://github.com/tadfisher/pass-otp)
    * [browserpass](https://github.com/dannyvankooten/browserpass)
  - [youtube-dl](https://github.com/rg3/youtube-dl)
  - investigate vim Python plugins
