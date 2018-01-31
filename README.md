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
| zathura                | document viewer                      |
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

| Name                   | Purpose                              | Source                                                                 | Version                                                                                                     |
|------------------------|--------------------------------------|------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| curl                   | HTTP client                          | [Github](https://github.com/curl/curl)                                 | [7.58.0](https://github.com/curl/curl/releases/tag/curl-7_58_0)                                             |
| elinks                 | Web browser                          | [repo.or.cz](http://repo.or.cz/elinks.git)                             | [f86be65](http://repo.or.cz/elinks.git/commit/f86be659718c0cd0a67f88b42f07044c23d0d028)                     |
| fzf                    | fuzzy finder                         | [Github](https://github.com/junegunn/fzf)                              | [0.17.3](https://github.com/junegunn/fzf/releases/tag/0.17.3)                                               |
| lesspipe               | less preprocessor                    | [Github](https://github.com/wofr06/lesspipe/)                          | [1.83](https://github.com/wofr06/lesspipe/commit/a4ebd9843f7f59991604a851f5c13a2fe602f7d0)                  |
| light                  | backlight controller                 | [Github](https://github.com/haikarainen/light)                         | [1ec60ac](https://github.com/haikarainen/light/commit/1ec60ac183cf1b04ff46897ad095ce7704225d80)             |
| mpc                    | MPD command line client              | [Github](https://github.com/MusicPlayerDaemon)                         | [0.28](https://github.com/MusicPlayerDaemon/mpc/releases/tag/v0.28)                                         |
| pass                   | password manager                     | [zx2c4.com](https://git.zx2c4.com/password-store/tree/)                | [1.7.1](https://git.zx2c4.com/password-store/tag/?h=1.7.1)                                                  |
| shellcheck             | shell script analysis tool           | [Github](https://github.com/koalaman/shellcheck)                       | [0.4.7](https://github.com/koalaman/shellcheck/releases/tag/v0.4.7)                                         |
| the silver searcher    | code search                          | [Github](https://github.com/ggreer/the_silver_searcher)                | [2.1.0](https://github.com/ggreer/the_silver_searcher/releases/tag/2.1.0)                                   |
