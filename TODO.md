# Periodic
  - upgrade tools, plugins, extensions,...
  - remove unused plugins, aliases, functions,...
  - replace unnecessary dependencies with own simpler config, scripts,...
  - update files which are downloaded automatically initially during make
  - update qutebrowser adblock lists with `:adblock-update`
  - check tools version with the `check_versions.sh` script

# Cleaning
  - reorganize vim/zsh/tmux/... config splitting into folders/files  
    for vim use ftdetect folders and such
  - add description to zsh functions (maybe add --help option)  
    and inputs validation too

# Bugs
  - copy doesn't remove old files from the target directories  
    probably we should use rsync or so  
    need to be careful because some manual config files should be kept (mutt gpg config)
  - http prompt issue with body value "products:='[]'"
  - termite --class argument seems not to work  
    need to make sway rule with title then
  - needs to set both termite size at start and in sway rule  
    to have it respected and the window centered when floating
  - sometimes vim exits unexpectedly while closing a buffer/window using custom bindings  
    might be a bug in the sayonara plugin  
    maybe we can do without this one now
  - sway notifications are displayed on top of the lockscreen  
    but only when launched from the systemd service it seems
  - in sway setting initial workspace layout doesn't apply to autostart windows  
    only to the ones launched afterwards
  - when not connecting the second monitor, sway bar is not displayed at all  
    since the laptop monitor normally doesn't display it in case of 2 monitors
  - when switching to sway floating spaces  
    after closing the floating window (or toggling the scratchpad)  
    it comes back to the wrong tiling window (always first one)  
    doesn't happen if just switching back to tiling space

# Testing
  - vim gutentags root marker doesn't seem to work correctly with multiple repos

# Improvements
  - review and improve copy paste workflow between terminals/vim/tmux/...
    * [extrackto](https://github.com/laktak/extrakto) tmux search and copy/insert/...
    * [yank](https://github.com/mptre/yank) copy output to clipboard
  - next version of tmux has if/else that we can use for remote hosts specific settings
    * defining TERM to use screen instead of tmux (no tmux terminfo on old system)
  - add manual project root marker usage in vifm and fzf use in vim
  - vim fzf should ignore some files/folders like CtrlP previously
  - use fzf in vim to switch between buffers
  - mark bug or limitation inside config file  
    and check with upgrades if they can be fixed or improved
  - interactively choose help topic and translator languages
  - qutebrowser full bindings reworking like other tools
  - review usage of zsh functions vs scripts  
    some functions may better be a script to be called outside zsh  
    and maybe vice-versa
  - Makefile makes use of DESTDIR  
    as recommended in [manual](https://www.gnu.org/prep/standards/html_node/DESTDIR.html)
    (might be used to make a package?)

# New Features
  - backup of notes, ncmpcpp lyrics,...

# Research
  - check use of zsh run-help command for replacement/completion for our own help script  
    (has support for man 1p and so, help for zsh function)
  - evaluate making scripts POSIX compliant  
    https://drewdevault.com/2018/02/05/Introduction-to-POSIX-shell.html
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
  - check possible usages of vim abbr
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
