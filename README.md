# Dotfiles

Personal configuration files

Used on a [Arch Linux](https://www.archlinux.org/) system.  
See [Portability](#portability).


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

Make should be only run from the repository root folder.
The setup will fail if make is run from somewhere else with the -f option specifying the path to the Makefile.
This is due to the need of relative includes.

### Manual setup steps

#### weechat
- set passphrase for secure storage `/secure passphrase [passphrase]`
- set slack group token `/secure set slack_token [slack token team 1],[slack token team 2]`


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

See the [COLORS](COLORS.md) file for more information.


## Key bindings

All packages are configured to try to use consistent key bindings across them.

Most key bindings are minimalized to keep only relevant ones
and configured to be as much vim-like as possible.
