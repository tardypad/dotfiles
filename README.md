# Dotfiles

Personal configuration files


## Tools

| Name    | Purpose              |
| ------- | -------------------- |
| git     | version control      |
| gnupg   | OpenPGP client
| konsole | terminal emulator    |
| neomutt | mail client          |
| openssh | SSH client           |
| tmux    | terminal multiplexer |
| vim     | text editor          |
| weechat | chat client          |
| zsh     | shell                |

See each individual tool README for more information


## Theme

All tools are configured to use the dark
[Solarized](http://ethanschoonover.com/solarized) color palette

All tools are configured to use as much as possible vim-like keybindings


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
git     gnupg   konsole neomutt openssh
tmux    vim     weechat zsh
If no tool argument is passed, all of them are setup
```

Some tools require some additional manual setup steps, check their own README
