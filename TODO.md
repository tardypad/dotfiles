# Periodic
  - upgrade tools, plugins, extensions,...
  - remove unused plugins, aliases, functions,...
  - replace unnecessary dependencies with own simpler config, scripts,...

# Cleaning
  - reorganize vim/zsh/tmux/... config splitting into folders/files  
    for vim use ftdetect folders and such

# Bugs
  - copy doesn't remove old files from the target directories  
    probably we should use rsync or so  
    need to be careful because some manual config files should be kept (mutt gpg config)
  - http prompt issue with body value "products:='[]'"
  - termite --class argument seems not to work  
    need to make sway rule with title then
  - needs to set both termite size at start and in sway rule  
    to have it respected and the window centered when floating
  - notification display from systemd fails to show bold/italic  
    maybe it's a problem with tput  
    we will wait for release of ncurses 6.1 to see if it fixes it  
    otherwise we will replace tput with espace sequences
  - sometimes vim exits unexpectedly while closing a buffer/window using custom bindings  
    might be a bug in the sayonara plugin  
    maybe we can do without this one now

# Testing
  - vim gutentags root marker doesn't seem to work correctly with multiple repos

# Improvements
  - review and improve copy paste workflow between terminals/vim/tmux/...
    * [extrackto](https://github.com/laktak/extrakto) tmux search and copy/insert/...
    * [yank](https://github.com/mptre/yank) copy output to clipboard
  - improve zsh extensions colors and bindings
  - fontconfig replace some fonts families used in Chromium
  - next version of tmux has if/else that we can use for remote hosts specific settings
    * disabling bindings of copy paste/xdg-open (no X server)
    * defining TERM to use screen instead of tmux (no tmux terminfo on old system)
    * remove time display in status line for local tmux (date already present in sway bar)
  - sway notification title background should cover the full line and text be centered  
    in the initial display (don't take into account horizontal scrolling)
  - add manual project root marker usage in vifm and fzf use in vim
  - vim fzf should ignore some files/folders like CtrlP previously
  - use fzf in vim to switch between buffers

# New Features
  - ALSA equalizer presets
    * [thread](http://www.pclinuxos.com/forum/index.php?topic=110087.0)
  - keyboard focused browser
    * [qutebrowser](https://www.qutebrowser.org/)  
      see [config](https://github.com/etnadji/dotfiles/blob/master/Softwares_Configs/qutebrowser/.config/qutebrowser/config.py#L529)
  - backup of notes, ncmpcpp lyrics,...
  - show notification 5 min after boot containing a fortune
  - specific sway menus (maybe accessible from main one with some fzf shorcuts?):
    * suspend/lock/reboot/poweroff/logout/...
    * launch common terminal applications directly (mail, news, chat,...)  
      instead of having to launch a terminal and then launch the application  
      investigate usage of desktop files maybe

# Research
  - starting music should display ncmpcpp in a sway scratchpad window  
    and launch mopidy beforehand (no need to enable its service)
  - evaluate making scripts POSIX compliant  
    https://drewdevault.com/2018/02/05/Introduction-to-POSIX-shell.html
  - usage of subreddit [MadeMeSmile](https://www.reddit.com/r/MadeMeSmile/random) random in workflow
  - replace custom temporary tmux panels/sessions scripts  
    with sway scripts that launches new terminal windows  
    check usability of it  
    (can be launched everywhere outside tmux then but the display might be less good)
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
  - keyboard config files with xkb
  - docs in terminal
    * [rfc](https://github.com/bfontaine/rfc)
    * [http](https://github.com/bfontaine/httpdoc)
  - spreadsheet
    * [sc-im](https://github.com/andmarti1424/sc-im)
  - presentations
    * [tpp](https://github.com/cbbrowne/tpp)
    * [mdp](https://github.com/visit1985/mdp)
    * [patat](https://github.com/jaspervdj/patat)
    * [doitlive](https://github.com/sloria/doitlive)
  - better git?
    * [gitsome](https://github.com/donnemartin/gitsome)
  - small tools (look for alternatives)
    * [progress](https://github.com/Xfennec/progress) show progress for cp, mv,...
    * [qalc](https://github.com/Qalculate/libqalculate) "calculator"
    * [lnav](https://github.com/tstack/lnav) log file navigator
  - vim session usage
    * [vim-session](https://github.com/xolox/vim-session)
  - vim tab usage
    * [taboo](https://github.com/gcmt/taboo.vim)
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
  - terminal image viewer
    * [timg](https://github.com/hzeller/timg)
    * [fim](http://www.nongnu.org/fbi-improved/)
    * [tv](https://github.com/daleroberts/tv)
    * [termimage](https://github.com/nabijaczleweli/termimage)
    * [explosion](https://github.com/Tenzer/explosion)
  - spellchecking
    * only vim own internal spell
    * [aspell](http://aspell.net/)
    * [hunspell](http://hunspell.github.io/)
  - extra password tools
    * [2fa](https://github.com/rsc/2fa)
    * [passotp](https://github.com/tadfisher/pass-otp)
    * [browserpass](https://github.com/dannyvankooten/browserpass)
  - download and display album art with [bum](https://github.com/dylanaraps/bum)
