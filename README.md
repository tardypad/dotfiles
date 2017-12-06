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
| mopidy          | music server              |
| mycli           | MySQL command line        |
| ncmpcpp         | MPD client                |
| neomutt         | mail client               |
| newsboat        | RSS reader                |
| notes           | notes management          |
| openssh         | SSH client                |
| rbtools         | Review Board command line |
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

Setup tools' config locally

Options:
  -h,  --help            show this message only

Available tools:
ctags           git             gnupg
httpie          http-prompt     konsole
less            mopidy          mycli
ncmpcpp         neomutt         newsboat
notes           openssh         rbtools
tmux            translate-shell vim
weechat         xdg             zsh
If no tool argument is passed, all of them are setup
```

Some tools require some additional manual setup steps, check their own README
