# Dotfiles

Personal configuration files

Used on a [Arch Linux](https://www.archlinux.org/) system

## Tools

All tools selected are [Free Software](https://www.gnu.org/philosophy/free-sw.en.html)

| Name                   | Purpose                              |
|------------------------|--------------------------------------|
| coreutils              | basic utilities                      |
| ctags                  | sources indexation                   |
| fontconfig             | fonts management                     |
| git                    | version control                      |
| gnupg                  | OpenPGP client                       |
| htop                   | system processes manager             |
| httpie                 | HTTP client                          |
| http-prompt            | HTTP interactive client              |
| less                   | pager                                |
| login                  | session starter                      |
| mopidy                 | music server                         |
| mycli                  | MySQL command line                   |
| ncmpcpp                | MPD client                           |
| neomutt                | mail client                          |
| newsboat               | RSS reader                           |
| notes                  | notes management                     |
| openssh                | SSH client                           |
| pacman                 | packages manager                     |
| rbtools                | Review Board command line            |
| readline               | command line library                 |
| sway                   | window manager                       |
| systemd                | system and service manager           |
| termite                | terminal emulator                    |
| tmux                   | terminal multiplexer                 |
| translate-shell        | translator                           |
| vifm                   | file manager                         |
| vim                    | text editor                          |
| weechat                | chat client                          |
| xdg-user-dirs          | user directories manager             |
| xdg-utils              | applications manager                 |
| zsh                    | shell                                |

See each individual tool folder README for more information
about versions, extensions, plugins,...

All tools are configured to use the dark
[Solarized](http://ethanschoonover.com/solarized) color palette.

Most keybindings are minimalized to keep only relevant ones
and configured to be as much vim-like as possible.

Colors and keybindings usage try to be consistent across tools.


## Setup

Setup is done using [Gnu Make](https://www.gnu.org/software/make/)

```shell
# install config files of all tools
make

# install config files of a single tool
make tmux

# install config files of a selection of tools
make tmux vim zsh
```

Some tools require some additional manual setup steps, check their own README


## Extra tools

Tools required in the setup which have no own dotfiles config:
- no support for it (the silver searcher)
- none is needed (curl, only used for initial downloads)
- config is part of another tool (fzf, config part of shell)

Doesn't include "common" GNU command line tools
such as sed, grep,... and the likes.

| Name                   | Purpose                              |
|------------------------|--------------------------------------|
| curl                   | HTTP client                          |
| fzf                    | fuzzy finder                         |
| pass                   | password manager                     |
| the silver searcher    | code search                          |
