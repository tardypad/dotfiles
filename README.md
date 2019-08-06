# Dotfiles

Personal configuration files

Used on a [Arch Linux](https://www.archlinux.org/) system.  
See [Portability](#portability).

## Packages

All packages selected are [Free Software](https://www.gnu.org/philosophy/free-sw.en.html)

Versions listed are the ones as defined by Arch Linux packages.  
The version URL links to the closest source code commit, tag or archive used.  
Note that it is not an exact match as extra patches might be added by the distro during packaging.

| Name                   | Purpose                              | Source                                                                 | Fork                                                                   | Version                                                                                                                     |
|------------------------|--------------------------------------|------------------------------------------------------------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| aria2                  | download utility                     | [Github](https://github.com/aria2/aria2)                               |                                                                        | [1.34.0](https://github.com/aria2/aria2/releases/tag/release-1.34.0)                                                        |
| coreutils              | basic utilities                      | [GNU](http://git.savannah.gnu.org/cgit/coreutils.git/)                 |                                                                        | [8.31](http://git.savannah.gnu.org/cgit/coreutils.git/tag/?h=v8.31)                                                         |
| fontconfig             | fonts management                     | [freedesktop.org](https://cgit.freedesktop.org/fontconfig/)            |                                                                        | [2:2.13.1+12+g5f5ec56](https://cgit.freedesktop.org/fontconfig/commit/?id=5f5ec5676c61b9773026a9335c9b0dfa73a73353)         |
| git                    | version control                      | [Github](https://github.com/git/git)                                   |                                                                        | [2.22.0](https://github.com/git/git/releases/tag/v2.22.0)                                                                   |
| gnupg                  | OpenPGP client                       | [GnuPG](https://git.gnupg.org/cgi-bin/gitweb.cgi?p=gnupg.git)          |                                                                        | [2.2.17](https://git.gnupg.org/cgi-bin/gitweb.cgi?p=gnupg.git;a=tag;h=gnupg-2.2.17)                                         |
| htop                   | system processes manager             | [Github](https://github.com/hishamhm/htop)                             | [Github](https://github.com/KoffeinFlummi/htop-vim)                    | [2.2.0](https://github.com/hishamhm/htop/releases/tag/2.2.0) with patches from fork                                         |
| httpie                 | HTTP client                          | [Github](https://github.com/jakubroztocil/httpie)                      |                                                                        | [1.0.2](https://github.com/jakubroztocil/httpie/releases/tag/1.0.2)                                                         |
| i3blocks               | window manager status line           | [Github](https://github.com/vivien/i3blocks)                           |                                                                        | [1.4](https://github.com/vivien/i3blocks/releases/tag/1.4)                                                                  |
| less                   | pager                                | [GNU](http://ftp.gnu.org/gnu/less/)                                    |                                                                        | [551](http://ftp.gnu.org/gnu/less/less-551.tar.gz)                                                                          |
| libqalculate           | calculator                           | [Github](https://github.com/Qalculate/libqalculate)                    |                                                                        | [3.3.0](https://github.com/Qalculate/libqalculate/releases/tag/v3.3.0)                                                      |
| mako                   | notifications daemon                 | [Github](https://github.com/emersion/mako)                             |                                                                        | [1.4](https://github.com/emersion/mako/releases/tag/v1.4)                                                                   |
| mopidy                 | music server                         | [Github](https://github.com/mopidy/mopidy)                             |                                                                        | [2.2.3](https://github.com/mopidy/mopidy/releases/tag/v2.2.3)                                                               |
| ncmpcpp                | MPD client                           | [Github](https://github.com/arybczak/ncmpcpp)                          |                                                                        | [0.8.2](https://github.com/arybczak/ncmpcpp/releases/tag/0.8.2)                                                             |
| neomutt                | mail client                          | [Github](https://github.com/neomutt/neomutt)                           |                                                                        | [20180716](https://github.com/neomutt/neomutt/releases/tag/neomutt-20180716)                                                |
| newsboat               | RSS reader                           | [Github](https://github.com/newsboat/newsboat)                         |                                                                        | [2.15](https://github.com/newsboat/newsboat/releases/tag/r2.15)                                                             |
| openssh                | SSH client                           | [Github](https://github.com/openssh/openssh-portable)                  |                                                                        | [8.0p1](https://github.com/openssh/openssh-portable/releases/tag/V_8_0_P1)                                                  |
| qutebrowser            | web browser                          | [Github](https://github.com/qutebrowser/qutebrowser)                   |                                                                        | [1.7.0](https://github.com/qutebrowser/qutebrowser/releases/tag/v1.7.0)                                                     |
| rbtools                | Review Board command line            | [Github](https://github.com/reviewboard/rbtools)                       |                                                                        | [0.7.11](https://github.com/reviewboard/rbtools/releases/tag/release-0.7.11)                                                |
| sway                   | window manager                       | [Github](https://github.com/swaywm/sway)                               |                                                                        | [1.1.1](https://github.com/swaywm/sway/releases/tag/1.1.1)                                                                  |
| swaylock               | screen locker                        | [Github](https://github.com/swaywm/swaylock)                           |                                                                        | [1.4](https://github.com/swaywm/swaylock/releases/tag/1.4)                                                                  |
| systemd                | system and service manager           | [Github](https://github.com/systemd/systemd)                           |                                                                        | [242.84](https://github.com/systemd/systemd-stable/commit/9d34e79ae8ef891adf3757f9248566def70471ad)                         |
| termite                | terminal emulator                    | [Github](https://github.com/thestinger/termite)                        | [Github](https://github.com/tardypad/termite)                          | [14.92](https://github.com/tardypad/termite/releases/tag/v14.92)                                                            |
| tmux                   | terminal multiplexer                 | [Github](https://github.com/tmux/tmux)                                 |                                                                        | [2.9_a](https://github.com/tmux/tmux/releases/tag/2.9a)                                                                     |
| translate-shell        | translator                           | [Github](https://github.com/soimort/translate-shell)                   |                                                                        | [0.9.6.9](https://github.com/soimort/translate-shell/releases/tag/v0.9.6.9)                                                 |
| universal-ctags        | sources indexation                   | [Github](https://github.com/universal-ctags/ctags)                     |                                                                        | [0.r6083.2258b24b](https://github.com/universal-ctags/ctags/commit/2258b24b27962615bc609c6139870be8769f578b)                |
| util-linux             | system utilities                     | [Github](https://github.com/karelzak/util-linux)                       |                                                                        | [2.34](https://github.com/karelzak/util-linux/releases/tag/v2.34)                                                           |
| vim                    | text editor                          | [Github](https://github.com/vim/vim)                                   |                                                                        | [8.1.1467](https://github.com/vim/vim/releases/tag/v8.1.1467)                                                               |
| weechat                | chat client                          | [Github](https://github.com/weechat/weechat)                           |                                                                        | [2.5](https://github.com/weechat/weechat/releases/tag/v2.5)                                                                 |
| xdg-user-dirs          | user directories manager             | [freedesktop.org](https://cgit.freedesktop.org/xdg/xdg-user-dirs/)     |                                                                        | [0.17](https://cgit.freedesktop.org/xdg/xdg-user-dirs/tag/?id=0.17)                                                         |
| xdg-utils              | applications manager                 | [freedesktop.org](https://cgit.freedesktop.org/xdg/xdg-utils/)         |                                                                        | [1.1.3](https://cgit.freedesktop.org/xdg/xdg-utils/tag/?id=v1.1.3)                                                          |
| zathura                | document viewer                      | [pwmt.org](https://git.pwmt.org/pwmt/zathura)                          |                                                                        | [0.4.3](https://git.pwmt.org/pwmt/zathura/tags/0.4.3)                                                                       |
| zsh                    | shell                                | [Github](https://github.com/zsh-users/zsh)                             |                                                                        | [5.7.1](https://github.com/zsh-users/zsh/releases/tag/zsh-5.7.1)                                                            |

See each individual package folder README for more information
about versions, extensions, plugins,...


## Setup

The setup is done using make.  
Some tools' setup require `curl` to download files.  
The documentation target requires `scdoc` to build the man pages.

```shell
# install config files of all packages
make

# install config files of a single packages
make tmux

# install config files of a selection of packages
make tmux vim zsh

# install documentation
make doc
```

Some packages require some additional manual setup steps, check their own README

Make should be only run from the repository root folder.
The setup will fail if make is run from somewhere else with the -f option specifying the path to the Makefile.
This is due to the need of relative includes.


## Portability

Good portability is mainly achieved through [POSIX](https://pubs.opengroup.org/onlinepubs/9699919799/) compliancy.

### Make

The Makefiles used for the setup are POSIX compliant.

### Scripts

Unless explicitly mentioned, all scripts are POSIX compliant.
Extra commands used are listed on top of each script file.
Their usage need to be checked within the script to see which options and operands are required.


## Documentation

All scripts that are meant to be used directly on the command line, and which are not simple wrappers,
are documented as man pages (see [docs](docs) folder).  
Other scripts contain some documentation as comments within the code itself.


## Colors management

All packages are configured to use the same color palette in a consistent way across them.

Colors management is centralized using base variables
which get replaced with the correct values during the setup.  
For example `{color/base0A/hex}` gets substituted by the hexadecimal value of the base0A color.  
Similarly `{color/base0A/number}` is replaced by that color's number.

Consistency is enforced by the use of aliases.  
For example `{color/warning/number}` is replaced by the number of the color chosen to represent warnings.

The THEME variable can be set to "light" or "dark" during setup to choose the color scheme.

See the [colors](colors) folder for more information.


## Key bindings

All packages are configured to try to use consistent key bindings across them.

Most key bindings are minimalized to keep only relevant ones
and configured to be as much vim-like as possible.


## Required extra packages

Packages required in the setup which have no own dotfiles config

Reasons for non having any dotfiles config:
- no support for any configuration (e.g., the silver searcher)
- configuration is only system wide (e.g., networkmanager)
- none is needed, use defaults (e.g., elinks, only used for basic HTML email display)
- config is part of another package (e.g., fzf, variables part of shell config)

Doesn't include (yet?) the following kind of packages:
- common GNU command line packages (e.g., sed)
- packages not required directly by our own config (e.g., phpctags, dependency via plugin)
- packages launched with minimal options usage (e.g., chromium, from desktop file)
- base Arch Linux packages (e.g., pacman)

| Name                   | Purpose                              | Source                                                                                 | Version                                                                                                                |
|------------------------|--------------------------------------|----------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| alsa-utils             | Audio utilities                      | [alsa-project.org](http://git.alsa-project.org/?p=alsa-utils.git)                      | [1.1.9](http://git.alsa-project.org/?p=alsa-utils.git;a=tag;h=v1.1.9)                                                  |
| aurutils               | AUR helper tools                     | [Github](https://github.com/AladW/aurutils)                                            | [2.3.1](https://github.com/AladW/aurutils/releases/tag/2.3.1)                                                          |
| bluez-utils            | Bluetooth utilities                  | [kernel.org](https://git.kernel.org/pub/scm/bluetooth/bluez.git)                       | [5.50](https://git.kernel.org/pub/scm/bluetooth/bluez.git/tag/?h=5.50)                                                 |
| curl                   | URL retrieval utility                | [Github](https://github.com/curl/curl)                                                 | [7.65.3](https://github.com/curl/curl/releases/tag/curl-7_65_3)                                                        |
| elinks                 | Web browser                          | [repo.or.cz](http://repo.or.cz/elinks.git)                                             | [0.13](http://repo.or.cz/elinks.git/commit/25c2850b597ee9a89bda8920e7f3d65ac3ac7e01)                                   |
| grim                   | screenshot utility                   | [Github](https://github.com/emersion/grim)                                             | [1.2.0](https://github.com/emersion/grim/releases/tag/v1.2.0)                                                          |
| otf-font-awesome       | icons font                           | [Github](https://github.com/FortAwesome/Font-Awesome)                                  | [5.9.0](https://github.com/FortAwesome/Font-Awesome/releases/tag/5.9.0)                                                |
| fzf                    | fuzzy finder                         | [Github](https://github.com/junegunn/fzf)                                              | [0.18.0](https://github.com/junegunn/fzf/releases/tag/0.18.0)                                                          |
| gron                   | JSON flattener                       | [Github](https://github.com/tomnomnom/gron)                                            | [0.6.0](https://github.com/tomnomnom/gron/releases/tag/v0.6.0)                                                         |
| imagemagick            | image utilities                      | [Github](https://github.com/ImageMagick/ImageMagick)                                   | [7.0.8.57](https://github.com/ImageMagick/ImageMagick/releases/tag/7.0.8-57)                                           |
| jp                     | JSON or CSV data plotting            | [Github](https://github.com/sgreben/jp)                                                | [1.1.12](https://github.com/sgreben/jp/releases/tag/1.1.12)                                                            |
| jq                     | JSON processor                       | [Github](https://github.com/stedolan/jq)                                               | [1.6](https://github.com/stedolan/jq/releases/tag/jq-1.6)                                                              |
| libxml2                | XML parsing                          | [Gnome](https://gitlab.gnome.org/GNOME/libxml2/)                                       | [2.9.9](https://gitlab.gnome.org/GNOME/libxml2/tags/v2.9.9)                                                            |
| light                  | backlight controller                 | [Github](https://github.com/haikarainen/light)                                         | [1.2](https://github.com/haikarainen/light/releases/tag/v1.2)                                                          |
| mpc                    | MPD command line client              | [Github](https://github.com/MusicPlayerDaemon)                                         | [0.32](https://github.com/MusicPlayerDaemon/mpc/releases/tag/v0.32)                                                    |
| networkmanager         | network manager                      | [freedesktop.org](https://cgit.freedesktop.org/NetworkManager/NetworkManager)          | [1.18.2](https://cgit.freedesktop.org/NetworkManager/NetworkManager/tag/?h=1.18.2)                                     |
| pacman-contrib         | extra pacman scripts                 | [Arch Linux](https://git.archlinux.org/pacman-contrib.git/)                            | [1.1.0](https://git.archlinux.org/pacman-contrib.git/tag/?h=v1.1.0)                                                    |
| pass                   | password manager                     | [zx2c4.com](https://git.zx2c4.com/password-store/)                                     | [1.7.3](https://git.zx2c4.com/password-store/tag/?h=1.7.3)                                                             |
| scdoc                  | man page generator                   | [Sourcehut](https://git.sr.ht/~sircmpwn/scdoc)                                         | [1.9.6](https://git.sr.ht/~sircmpwn/scdoc/refs/1.9.6)                                                                  |
| slurp                  | region selection                     | [Github](https://github.com/emersion/slurp)                                            | [1.2.0](https://github.com/emersion/slurp/releases/tag/v1.2.0)                                                         |
| swayidle               | idle management daemon               | [Github](https://github.com/swaywm/swayidle)                                           | [1.5](https://github.com/swaywm/swayidle/releases/tag/1.5)                                                             |
| the_silver_searcher    | code search                          | [Github](https://github.com/ggreer/the_silver_searcher)                                | [2.2.0](https://github.com/ggreer/the_silver_searcher/releases/tag/2.2.0)                                              |
| wl-clipboard           | clipboard utilities                  | [Github](https://github.com/bugaevc/wl-clipboard)                                      | [1.0.0](https://github.com/bugaevc/wl-clipboard/releases/tag/v1.0.0)                                                   |
