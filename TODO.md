# Periodic
  - upgrade tools and plugins
  - remove unused plugins and such

# Cleaning

# Bugs
  - copy doesn't remove old files from the target directories  
    probably we should use rsync or so  
    need to be careful because some manual config files should be kept (mutt gpg config)
  - http prompt issue with body value "products:='[]'"

# Testing
  - vim ctrlp root marker doesn't seem to work correctly with multiple repos
  - idem for vim gutentags root marker

# Improvements
  - add sourcing of local tmux config files
  - start_konsole_env: order tabs by title number after all launches
  - split core configuration files between general / style / bindings .conf files  
    (or other meaningful split, like by extensions type for mopidy)  
    and let the setup script concatenate and rename them if needed
  - add a misc "tool"  
    for readline, fonts, mysql? config
  - move scripts into a bin "tool"  
    better than put them in zsh since they are general usually

# New Features
  - ALSA equalizer presets
    * [thread](http://www.pclinuxos.com/forum/index.php?topic=110087.0)
  - htop config
    * (with vim key bindings? [htop-vim](https://github.com/KoffeinFlummi/htop-vim))
  - readline config for vi mode in cli tools (mysql, redis, influxdb,...)
  - [chromium-vim](https://github.com/1995eaton/chromium-vim) cvimrc

# Research
  - files browser
    * [ranger](https://github.com/ranger/ranger)
    * [vifm](https://github.com/vifm/vifm)
  - [fuzzy matchers](https://www.reddit.com/r/commandline/comments/36h2cj/fuzzy_matchers_overview/)
  - calendar app
    * [khal](https://github.com/pimutils/khal)
    * [calendar-cli](https://github.com/tobixen/calendar-cli)
    * [gcalcli](https://github.com/insanum/gcalcli)
  - contacts app to use in neomutt
    * [khard](https://github.com/scheibler/khard)
    * [abook](https://sourceforge.net/p/abook/git)
    * [goobook](https://gitlab.com/goobook/goobook)
  - keyboard config files with xkb
  - tmux env: switch to root user with password  
    and maybe store other information with it
    * [pass](https://www.passwordstore.org/)
    * [git-crypt](https://www.agwa.name/projects/git-crypt/)
    * [git-secret](https://github.com/sobolevn/git-secret)
  - docs in terminal
    * [rfc](https://github.com/bfontaine/rfc)
    * [http](https://github.com/bfontaine/httpdoc)
  - spreadsheet
    * [sc-im](https://github.com/andmarti1424/sc-im)
  - presentations
    * [tpp](https://github.com/cbbrowne/tpp)
    * [mdp](https://github.com/visit1985/mdp)
    * [doitlive](https://github.com/sloria/doitlive)
  - better git?
    * [gitsome](https://github.com/donnemartin/gitsome)
  - small tools (look for alternatives)
    * [progress](https://github.com/Xfennec/progress) show progress for cp, mv,...
    * [qalc](https://github.com/Qalculate/libqalculate) "calculator"
    * [lnav](https://github.com/tstack/lnav) log file navigator
    * [yank](https://github.com/mptre/yank) copy output to clipboard
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
  - tmux search and copy url/hash/files/...
    * [copycat](https://github.com/tmux-plugins/tmux-copycat)
    * [extrackto](https://github.com/laktak/extrakto)
