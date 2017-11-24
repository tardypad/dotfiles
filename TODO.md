# Periodic
  - upgrade tools and plugins
  - remove unused plugins and such

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
  - split core configuration files between general / style / bindings .conf files  
    (or other meaningful split, like by extensions type for mopidy)  
    and let the setup script concatenate and rename them if needed

# New Features
  - vim and zsh config for remote servers
  - ALSA equalizer presets  
    [thread](http://www.pclinuxos.com/forum/index.php?topic=110087.0)
  - htop config  
    (with vim key bindings? [htop-vim](https://github.com/KoffeinFlummi/htop-vim))
  - readline config for vi mode in cli tools (mysql, redis, influxdb,...)
  - [chromium-vim](https://github.com/1995eaton/chromium-vim) cvimrc

# Research
  - files browser  
    [ranger](https://github.com/ranger/ranger)  
    [vifm](https://github.com/vifm/vifm)
  - [fuzzy matchers](https://www.reddit.com/r/commandline/comments/36h2cj/fuzzy_matchers_overview/)
  - calendar app  
    [khal](https://github.com/pimutils/khal)  
    [calendar-cli](https://github.com/tobixen/calendar-cli)  
    [gcalcli](https://github.com/insanum/gcalcli)
  - contacts app to use in neomutt  
    [khard](https://github.com/scheibler/khard)  
    [abook](https://sourceforge.net/p/abook/git)  
    [goobook](https://gitlab.com/goobook/goobook)
  - keyboard config files with xkb
  - tmux env: switch to root user with password  
    [pass](https://www.passwordstore.org/)  
    [git-crypt](https://www.agwa.name/projects/git-crypt/)  
    [git-secret](https://github.com/sobolevn/git-secret)  
    and maybe store other information with it
