# Dotfiles

Personal configuration files


## Repository organization

### Documentation

The [doc/](doc) folder contains general documentation about the repository.

- [COLORS.md](doc/COLORS.md)
  color scheme information
- [KEYBINDINGS.md](doc/KEYBINDINGS.md)
  key bindings scheme information
- [PACKAGES.md](doc/PACKAGES.md)
  list of all packages used with purpose, version, link,...
- [PLUGINS.md](doc/PLUGINS.md)
  list of all packages plugins used with purpose, version, link,...
- [RESOURCES.md](doc/RESOURCES.md)
  list of external links related to dotfiles or packages

### Configuration files

The [files/](files) folder contains all the packages files to setup.

- [configs/](files/configs/)
  configuration files grouped per package
- [data/](files/data)
  data files used by scripts or configs
- [docs/](files/docs)
  scripts documentation grouped per package
- [scripts/](files/scripts)
  scripts grouped per package


### Setup files

The [setup/](setup) folder contains scripts used for the setup
(see [Setup](#setup)).

The [config/](config) folder contains some configuration files used by the
setup process (see [Placeholders](#placeholders)).


### Utilities

The [utilities/](utilities) folder contains various helper scripts used to
managed the repository.
They need to be run from the repository root folder as some of them depends on
the repository structure.


### Templates

The [templates/](templates) folder contains various templates used to bootstrap
the creation of some internal files of the repository.


## Setup

The setup is done using `make`.

Some targets additionally require extra tools:
- `curl` to download files
- `scdoc` to build man pages
- `git` to clone plugins
- `shellcheck` to check scripts
- some of the packages used must be installed themselves to setup some files,
  reload a service, clear the cache,...:
  * fontconfig
  * systemd
  * nvim

```shell
# setup config files of a single package
make git-configs

# setup doc files of a single package
make git-docs

# setup scripts files of a single package
make git-scripts

# setup all files of a single package
make git

# setup all files of a selection of packages
make git tmux nvim zsh

# setup everything
make
```

Make should be only run from the repository root folder.
The setup will fail if make is run from somewhere else with the -f option
specifying the path to the Makefile.
This is due to the need of relative includes.

The THEME variable can be set to "light" or "dark" to choose which color scheme
to setup.


## Portability

The configuration is used on a [Arch Linux](https://www.archlinux.org/) system.
Good portability is mainly achieved through
[POSIX](https://pubs.opengroup.org/onlinepubs/9699919799/) compliancy.

### Make

The Makefiles used for the setup are POSIX compliant except for the usage of
variables export.

### Scripts

Unless explicitly mentioned, all scripts are POSIX compliant.
Extra commands used are listed as dependencies in their man page.
Their usage need to be checked within the script to see which options and
operands are actually required.
The man page list the environment variables used by the script. The variables
which are defined in the POSIX standard with a meaning (such as HOME, PATH,...)
are not part of that list.


## Placeholders

Some consistency across packages is achieved through a templating system with 
placeholders with a centralized configuration.
The placeholders get replaced during the setup process.

*Warning*  
This means that if you want to copy just some scripts or config files from this
repository, you should check for the presence of those placeholders and replace
them manually.

### Applications

See [apps](config/apps) configuration file.

`{app/web_browser}` gets substituted by the command to launch the web browser.
And similarly for the other apps.

### Colors

See [colors](config/colors) configuration folder.

`{color/base0A/hex}` gets substituted by the hexadecimal value of the `base0A`
color. `{color/base02/number}` would be replaced by the number of the
`base02` color.
And similarly for the other types of color output.

Consistency is enforced by the use of aliases. For example
`{color/warning/number}` is replaced by the number of the color chosen to
represent warnings.

See the [COLORS.md](doc/COLORS.md) file for more explanation.

### Directories

See [dirs](config/dirs) configuration file.

`{dir/cache}` gets substituted by the path of the cache folder.
And similarly for the other directories.


### Key bindings

See [keys](config/keys) configuration file.

`{key/a}` gets substituted by "a".
Similarly `{key/space}` get substituted by "space".

Consistency is enforced by the use of aliases. For example
`{key/previous/upp}` is replaced by the uppercase version of the key chosen for
"previous" action.

See the [KEYBINDINGS.md](doc/KEYBINDINGS.md) file for more explanation.
