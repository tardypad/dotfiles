# load plugins manager
source ~/.zplug/init.zsh

# a progress spinner for ZSH scripts
zplug "molovo/revolver", \
  as:command, \
  use:revolver

# source plugins and add commands to PATH
zplug load
