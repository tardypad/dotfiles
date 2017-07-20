# Dotfiles

Personal configuration files


## Tools

All tools selected are open source.

| Name    | Purpose              |
| ------- | -------------------- |
| git     | version control      |
| gnupg   | OpenPGP client       |
| konsole | terminal emulator    |
| less    | pager                |
| mopidy  | music server         |
| mycli   | MySQL command line   |
| ncmpcpp | MPD client           |
| neomutt | mail client          |
| openssh | SSH client           |
| tmux    | terminal multiplexer |
| vim     | text editor          |
| weechat | chat client          |
| zsh     | shell                |

See each individual tool folder README for more information.

All tools are configured to use the dark
[Solarized](http://ethanschoonover.com/solarized) color palette.

Most keybindings are minimalized to keep only relevant ones
and configured to be as much vim-like as possible.  
They also try to be consistent across tools.


## Setup

```shell
usage: setup_config.zsh [<options>] [<tools>]

Setup tools' config locally and/or on remote hosts

Options:
  -h,  --help            show this message only
  -d,  --dest   DEST     only setup destinations DEST:
                           local   only setup local host
                           remote  only setup all remote hosts
                           HOST    only setup remote host HOST
                         by default local and all remote hosts are setup

Available tools:
git     gnupg   konsole less    mopidy
mycli   ncmpcpp neomutt openssh tmux
vim     weechat zsh
If no tool argument is passed, all of them are setup
```

Some tools require some additional manual setup steps, check their own README
