# load plugins manager
source ~/.zplug/init.zsh

# a bit abusive to put this one here (no ZSH thing)
# but at least we can manage updates easily
zplug 'seebi/dircolors-solarized', \
  hook-build: "ln -s ${ZPLUG_REPOS}/seebi/dircolors-solarized/dircolors.ansi-dark ~/.dircolors"

# a progress spinner for ZSH scripts
zplug "molovo/revolver", \
  as:command, \
  use:revolver

# source plugins and add commands to PATH
zplug load
