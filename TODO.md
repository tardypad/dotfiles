# Periodic
- upgrade tools and plugins
  update own repos as part of it

# Cleaning

# Bugs
  - local_copy doesn't remove old files from the target directories  
    probably we should use rsync or so (in remote_copy to then)  
    need to be careful because some manual config files should be kept (mutt gpg config)
  - http prompt issue with body value "products:='[]'"

# Testing
  - vim ctrlp root marker doesn't seem to work correctly with multiple repos
  - idem for vim gutentags root marker

# Improvements
  - add sourcing of local tmux config files
  - start_konsole_env: order tabs by title number after all launches
  - split configuration files between plugins conf and core conf
  - split core configuration files between general / style / bindings .conf files  
    (or other meaningful split, like by extensions type for mopidy)  
    and let the setup script concat and rename them if needed

# New Features
  - add keyboard config files with xkb
  - tmux env: switch to root user with password  
    check [Blackbox list](https://github.com/StackExchange/blackbox#alternatives)
  - vim and zsh config for remote servers
  - ALSA equalizer presets
  - htop config (with vim key bindings patch?)
  - readline config for vi mode in cli tools (mysql, redis, influxdb, mycli?,...)
  - [cvimrc](https://github.com/1995eaton/chromium-vim)

# Research
  - file browser: ranger / vifm
  - [fuzzy matchers](https://www.reddit.com/r/commandline/comments/36h2cj/fuzzy_matchers_overview/)
  - calendar app [khal](https://github.com/pimutils/khal), see alternatives in README too
  - contacts app to use in neomutt  
    [khard](https://github.com/scheibler/khard)  
    [abook](https://sourceforge.net/p/abook/git)  
    [goobook](https://gitlab.com/goobook/goobook)
