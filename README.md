# Dotfiles

Personal configuration files


## Tools

All tools selected are [Free Software](https://www.gnu.org/philosophy/free-sw.en.html)

| Name            | Purpose                   |
|-----------------|---------------------------|
| ctags           | sources indexation        |
| git             | version control           |
| gnupg           | OpenPGP client            |
| httpie          | HTTP client               |
| http-prompt     | HTTP interactive client   |
| konsole         | terminal emulator         |
| less            | pager                     |
| login           | session starter           |
| mopidy          | music server              |
| mycli           | MySQL command line        |
| ncmpcpp         | MPD client                |
| neomutt         | mail client               |
| newsboat        | RSS reader                |
| notes           | notes management          |
| openssh         | SSH client                |
| rbtools         | Review Board command line |
| sway            | window manager            |
| termite         | terminal emulator         |
| tmux            | terminal multiplexer      |
| translate-shell | translator                |
| vim             | text editor               |
| weechat         | chat client               |
| xdg             | X Window interoperability |
| zsh             | shell                     |

See each individual tool folder README for more information.

All tools are configured to use the dark
[Solarized](http://ethanschoonover.com/solarized) color palette.

Most keybindings are minimalized to keep only relevant ones
and configured to be as much vim-like as possible.  

Colors and keybindings usage try to be consistent across tools.


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
ctags		git		           gnupg
httpie		http-prompt	       konsole
less		login		       mopidy
mycli		ncmpcpp		       neomutt
newsboat	notes		       openssh
rbtools		sway		       termite
tmux		translate-shell    vim
weechat		xdg		           zsh
If no tool argument is passed, all of them are setup
```

Some tools require some additional manual setup steps, check their own README
