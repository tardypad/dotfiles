#!/usr/bin/zsh

vim::local::setup() {
  # create necessary directories
  mkdir -p ~/.vim/{backup,swap,undo}

  # copy config files
  local_copy "vim/vimrc" ".vimrc"
  local_copy "vim/vim/plugins.vim" ".vim/plugins.vim"
  local_copy "vim/vim/conf" ".vim/conf"

  # install the plugins manager if not present
  [[ -f ~/.vim/autoload/plug.vim ]] \
    || curl --silent --location --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
         --output ~/.vim/autoload/plug.vim

  # Manually install icinga2 syntax if not present
  # not a real plugin, just one file of a bigger repository
  [[ -f ~/.vim/plugged/icinga2/syntax/icinga2.vim ]] \
    || curl --silent --location --create-dirs \
         https://raw.githubusercontent.com/Icinga/icinga2/master/tools/syntax/vim/syntax/icinga2.vim \
         --output ~/.vim/plugged/icinga2/syntax/icinga2.vim

  # load only the plugins definition and install them
  vim -N --noplugin -u ~/.vim/plugins.vim \
    +PlugInstall +qall \
    > /dev/null 2>&1
}
