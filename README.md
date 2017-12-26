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
| konsole                | terminal emulator                    |
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
| sway                   | window manager                       |
| termite                | terminal emulator                    |
| tmux                   | terminal multiplexer                 |
| translate-shell        | translator                           |
| vim                    | text editor                          |
| weechat                | chat client                          |
| xdg                    | X Window interoperability            |
| zsh                    | shell                                |

See each individual tool folder README for more information
about versions, extensions, plugins,...

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

If no tool argument is passed, all of them are setup
```

Some tools require some additional manual setup steps, check their own README


## Extra tools

Tools required in the setup which have no dotfiles config.  
Either they don't support it or none is needed.  
Doesn't include "common" GNU command line tools
such as sed, grep,... and the likes.

| Name                   | Purpose                              |
|------------------------|--------------------------------------|
| curl                   | HTTP client                          |
| the silver searcher    | code search                          |
| xdotool                | X inputs simulator                   |
